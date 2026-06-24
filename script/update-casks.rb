#!/usr/bin/env ruby
# frozen_string_literal: true

require "json"
require "open3"
require "optparse"
require "pathname"

class UpdateCasks
  ANSI_ESCAPE_PATTERN = /\e\[[0-9;]*[A-Za-z]/.freeze
  VERSION_LINE = /^(\s*version\s+")([^"]+)(".*)$/
  TOKEN_PATTERNS = [
    /(^|\.)(full_token|token|full_name|name|cask|formula)$/i,
  ].freeze
  LATEST_PATTERNS = [
    /(^|\.)(latest|newest|new[-_]?version|livecheck[-_]?version)$/i,
    /(^|\.)version\.(latest|newest|new[-_]?version)$/i,
  ].freeze
  VERSION_PATTERNS = [
    /(^|\.)(version|versions\.stable)$/i,
  ].freeze
  EXCLUDED_VERSION_PATH = /(current|installed|bundle|major|minor|patch)/i

  def self.run(argv)
    new(parse_options(argv)).run
  end

  def self.parse_options(argv)
    options = {
      dry_run: false,
      repo_root: Pathname(__dir__).parent,
      tap_name: ENV["TAP_NAME"],
      livecheck_output: ENV["LIVECHECK_OUTPUT"],
      only: nil,
    }

    parser = OptionParser.new do |opts|
      opts.banner = "Usage: ruby script/update-casks.rb [options]"

      opts.on("--dry-run", "Show planned updates without writing files") do
        options[:dry_run] = true
      end

      opts.on("--tap-name NAME", "Override the Homebrew tap name") do |value|
        options[:tap_name] = value
      end

      opts.on("--livecheck-output PATH", "Read livecheck output from a file") do |value|
        options[:livecheck_output] = value
      end

      opts.on("--only TOKENS", "Limit to comma-separated cask tokens") do |value|
        options[:only] = value.split(",").map(&:strip).reject(&:empty?)
      end
    end

    parser.parse!(argv)
    raise OptionParser::InvalidOption, argv.join(" ") unless argv.empty?

    options
  end

  def initialize(options)
    @options = options
    @repo_root = options.fetch(:repo_root)
    @casks_dir = @repo_root.join("Casks")
    @tap_name = options[:tap_name] || derive_tap_name
  end

  def run
    candidates = candidate_files
    selected = select_candidates(candidates)
    livecheck_output = load_livecheck_output(selected.keys)
    updates = parse_livecheck_output(livecheck_output)
    changed = apply_updates(selected, updates)

    print_summary(selected, updates, changed)
    0
  rescue StandardError => error
    warn "update-casks failed: #{error.message}"
    1
  end

  private

  def candidate_files
    Dir[@casks_dir.join("*.rb").to_s].sort.each_with_object({}) do |file, result|
      path = Pathname(file)
      content = path.read
      next unless content.include?("sha256 :no_check")
      next unless content.include?("livecheck do")

      result[path.basename(".rb").to_s] = path
    end
  end

  def select_candidates(candidates)
    return candidates if @options[:only].nil?

    missing = @options[:only] - candidates.keys
    raise "Unknown or ineligible casks: #{missing.join(', ')}" unless missing.empty?

    candidates.slice(*@options[:only])
  end

  def load_livecheck_output(tokens)
    path = @options[:livecheck_output]
    return Pathname(path).read if path

    raise "No eligible casks found" if tokens.empty?

    run_livecheck(tokens)
  end

  def run_livecheck(tokens)
    qualified = tokens.map { |token| qualify_token(token) }
    stdout, stderr, status = Open3.capture3(livecheck_env, *livecheck_command("--json", qualified), chdir: @repo_root.to_s)
    return preferred_livecheck_output(stdout, stderr) if status.success?

    warn stderr unless stderr.to_s.strip.empty?

    stdout, stderr, status = Open3.capture3(livecheck_env, *livecheck_command(nil, qualified), chdir: @repo_root.to_s)
    return preferred_livecheck_output(stdout, stderr) if status.success?

    warn "brew livecheck batch run exited non-zero; retrying per cask"
    output, failures = run_livecheck_per_token(tokens)
    failures.each { |failure| warn failure }
    return output unless output.empty?
    raise "brew livecheck failed\n#{failures.join("\n")}" unless failures.empty?

    detail = [stderr, stdout].map { |value| value.to_s.strip }.reject(&:empty?).join("\n")
    raise "brew livecheck failed\n#{detail}"
  end

  def livecheck_command(json_flag, qualified)
    command = ["brew", "livecheck", "--quiet", "--newer-only", "--cask"]
    command << json_flag if json_flag
    command.concat(qualified)
    command
  end

  def livecheck_env
    env = {
      "HOMEBREW_NO_AUTO_UPDATE" => ENV.fetch("HOMEBREW_NO_AUTO_UPDATE", "1"),
    }

    if ENV.key?("HOMEBREW_NO_REQUIRE_TAP_TRUST")
      env["HOMEBREW_NO_REQUIRE_TAP_TRUST"] = ENV.fetch("HOMEBREW_NO_REQUIRE_TAP_TRUST")
    end

    env
  end

  def run_livecheck_per_token(tokens)
    outputs = []
    failures = []

    tokens.each do |token|
      stdout, stderr, status = Open3.capture3(
        livecheck_env,
        *livecheck_command(nil, [qualify_token(token)]),
        chdir: @repo_root.to_s,
      )

      output = partial_results_output(stdout, stderr, [token])
      unless output.nil?
        outputs << output
        next
      end

      next if status.success?

      detail = [stderr, stdout].map { |value| strip_ansi(value).strip }.reject(&:empty?).join("\n")
      failures << "#{token}: #{detail.empty? ? 'livecheck failed without output' : detail}"
    end

    [outputs.join("\n"), failures]
  end

  def partial_results_output(stdout, stderr, tokens)
    [stdout, stderr, [stdout, stderr].reject(&:empty?).join("\n")].find do |output|
      usable_partial_results?(output, tokens)
    end
  end

  def preferred_livecheck_output(stdout, stderr)
    return stdout unless stdout.to_s.strip.empty?
    return stderr unless stderr.to_s.strip.empty?

    stdout
  end

  def usable_partial_results?(output, tokens)
    parsed = parse_livecheck_output(output)
    !(parsed.keys & tokens).empty?
  rescue StandardError
    false
  end

  def parse_livecheck_output(output)
    parsed = parse_json_results(output)
    return parsed unless parsed.empty?

    parse_text_results(output)
  end

  def parse_json_results(output)
    json_documents(output).each_with_object({}) do |document, result|
      next unless document.is_a?(Hash)

      flat_fields = flatten_fields(document)
      token = normalize_token(find_first_value(flat_fields, TOKEN_PATTERNS))
      latest = extract_latest_value(flat_fields)
      next if token.nil? || latest.nil?

      result[token] = latest
    end
  end

  def json_documents(output)
    stripped = output.to_s.strip
    return [] if stripped.empty?

    parsed = JSON.parse(stripped)
    parsed.is_a?(Array) ? parsed : [parsed]
  rescue JSON::ParserError
    stripped.each_line.each_with_object([]) do |line, result|
      line = line.strip
      next if line.empty?

      result << JSON.parse(line)
    rescue JSON::ParserError
      next
    end
  end

  def flatten_fields(object, prefix = nil, result = [])
    case object
    when Hash
      object.each do |key, value|
        next_prefix = [prefix, key.to_s].compact.join(".")
        flatten_fields(value, next_prefix, result)
      end
    when Array
      object.each_with_index do |value, index|
        next_prefix = [prefix, index.to_s].compact.join(".")
        flatten_fields(value, next_prefix, result)
      end
    when String, Numeric
      result << [prefix.to_s, object.to_s]
    end

    result
  end

  def extract_latest_value(flat_fields)
    explicit = find_first_value(flat_fields, LATEST_PATTERNS)
    return explicit unless explicit.nil?

    candidates = flat_fields.each_with_object([]) do |(path, value), result|
      next unless VERSION_PATTERNS.any? { |pattern| pattern.match?(path) }
      next if EXCLUDED_VERSION_PATH.match?(path)

      result << value
    end.uniq

    candidates.first if candidates.one?
  end

  def find_first_value(flat_fields, patterns)
    pair = flat_fields.find do |path, _value|
      patterns.any? { |pattern| pattern.match?(path) }
    end

    pair&.last
  end

  def parse_text_results(output)
    output.to_s.each_line.each_with_object({}) do |line, result|
      line = strip_ansi(line).strip
      next if line.empty?
      next if line.start_with?("Warning:")

      if (match = line.match(/^(?<name>[^:]+):\s+(?<current>.+?)\s+==>\s+(?<latest>.+)$/))
        result[normalize_token(match[:name])] = match[:latest].strip
        next
      end

      if (match = line.match(/^(?<name>[^:]+):\s+(?<latest>.+)$/))
        result[normalize_token(match[:name])] = match[:latest].strip
      end
    end
  end

  def strip_ansi(value)
    value.to_s.gsub(ANSI_ESCAPE_PATTERN, "")
  end

  def apply_updates(candidates, updates)
    candidates.each_with_object([]) do |(token, path), changed|
      latest = updates[token]
      next if latest.nil?

      current = current_version(path)
      next if current == latest

      replace_version(path, latest)
      changed << { token: token, from: current, to: latest, path: path }
    end
  end

  def current_version(path)
    match = path.read.match(VERSION_LINE)
    raise "Missing version line in #{path}" if match.nil?

    match[2]
  end

  def replace_version(path, version)
    content = path.read
    updated = content.sub(VERSION_LINE, "\\1#{version}\\3")
    raise "Could not update version in #{path}" if updated == content

    path.write(updated) unless @options[:dry_run]
  end

  def print_summary(selected, updates, changed)
    puts "Eligible casks: #{selected.size}"
    puts "Updates available: #{updates.size}"

    if changed.empty?
      puts "No cask versions changed."
      return
    end

    changed.each do |item|
      relative_path = item.fetch(:path).relative_path_from(@repo_root)
      puts "#{item.fetch(:token)}: #{item.fetch(:from)} -> #{item.fetch(:to)} (#{relative_path})"
    end
  end

  def qualify_token(token)
    return token if token.include?("/") || @tap_name.nil?

    "#{@tap_name}/#{token}"
  end

  def normalize_token(value)
    raw = value.to_s.strip
    return if raw.empty?

    raw.split.first.to_s.split("/").last
  end

  def derive_tap_name
    stdout, _stderr, status = Open3.capture3("git", "remote", "get-url", "origin", chdir: @repo_root.to_s)
    return unless status.success?

    remote = stdout.strip
    match = remote.match(%r{github\.com[:/](?<owner>[^/]+)/(?<repo>[^/.]+)(?:\.git)?$})
    return unless match

    repo = match[:repo].sub(/\Ahomebrew-/, "")
    "#{match[:owner]}/#{repo}"
  end
end

exit(UpdateCasks.run(ARGV))
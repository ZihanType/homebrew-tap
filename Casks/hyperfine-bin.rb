cask "hyperfine-bin" do
  version "1.18.0"
  sha256 :no_check

  url "https://github.com/sharkdp/hyperfine/releases/download/v#{version}/hyperfine-v#{version}-x86_64-apple-darwin.tar.gz"
  name "hyperfine-bin"
  desc "Command-line benchmarking tool"
  homepage "https://github.com/sharkdp/hyperfine"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "hyperfine-v#{version}-x86_64-apple-darwin/hyperfine"
  binary "hyperfine-v#{version}-x86_64-apple-darwin/autocomplete/hyperfine.bash",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/hyperfine"
  binary "hyperfine-v#{version}-x86_64-apple-darwin/autocomplete/_hyperfine",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_hyperfine"
  binary "hyperfine-v#{version}-x86_64-apple-darwin/autocomplete/hyperfine.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/hyperfine.fish"
end
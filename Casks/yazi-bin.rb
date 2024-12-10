cask "yazi-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.4.1"
  sha256 :no_check

  url "https://github.com/sxyazi/yazi/releases/download/v#{version}/yazi-#{arch}-apple-darwin.zip"
  name "yazi-bin"
  desc "Blazing fast terminal file manager written in Rust, based on async I/O"
  homepage "https://github.com/sxyazi/yazi"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "yazi-#{arch}-apple-darwin/ya"
  binary "yazi-#{arch}-apple-darwin/yazi"

  binary "yazi-#{arch}-apple-darwin/completions/ya.bash",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/ya"
  binary "yazi-#{arch}-apple-darwin/completions/yazi.bash",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/yazi"

  binary "yazi-#{arch}-apple-darwin/completions/_ya",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_ya"
  binary "yazi-#{arch}-apple-darwin/completions/_yazi",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_yazi"

  binary "yazi-#{arch}-apple-darwin/completions/ya.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/ya.fish"
  binary "yazi-#{arch}-apple-darwin/completions/yazi.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/yazi.fish"
end
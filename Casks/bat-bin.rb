cask "bat-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.26.0"
  sha256 :no_check

  url "https://github.com/sharkdp/bat/releases/download/v#{version}/bat-v#{version}-#{arch}-apple-darwin.tar.gz"
  name "bat-bin"
  desc "A cat(1) clone with wings."
  homepage "https://github.com/sharkdp/bat"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "bat-v#{version}-#{arch}-apple-darwin/bat"
  binary "bat-v#{version}-#{arch}-apple-darwin/autocomplete/bat.bash",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/bat"
  binary "bat-v#{version}-#{arch}-apple-darwin/autocomplete/bat.zsh",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_bat"
  binary "bat-v#{version}-#{arch}-apple-darwin/autocomplete/bat.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/bat.fish"
end
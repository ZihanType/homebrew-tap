cask "bat-bin" do
  version "0.21.0"
  sha256 "7b0bf052aff98dbe4b5f259b0d3a8b320b5ee03fbde6a31bb0b4a08ad0ce58aa"

  url "https://github.com/sharkdp/bat/releases/download/v#{version}/bat-v#{version}-x86_64-apple-darwin.tar.gz"
  name "bat-bin"
  desc "A cat(1) clone with wings."
  homepage "https://github.com/sharkdp/bat"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "bat-v#{version}-x86_64-apple-darwin/bat"
  binary "bat-v#{version}-x86_64-apple-darwin/autocomplete/bat.bash",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/bat"
  binary "bat-v#{version}-x86_64-apple-darwin/autocomplete/bat.zsh",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_bat"
  binary "bat-v#{version}-x86_64-apple-darwin/autocomplete/bat.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/bat.fish"
end
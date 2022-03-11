cask "bat-bin" do
  version "0.20.0"
  sha256 "ba3dde7e7d954e31215ecf50f441580a8c6ee3e3002d9e2e3f5852919833f0ea"

  url "https://github.com/sharkdp/bat/releases/download/v#{version}/bat-v#{version}-x86_64-apple-darwin.tar.gz"
  name "bat-bin"
  desc "A cat(1) clone with wings."
  homepage "https://github.com/sharkdp/bat"

  livecheck do
    url :stable
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
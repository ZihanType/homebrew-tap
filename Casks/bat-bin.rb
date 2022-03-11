cask "bat-bin" do
  version "0.20.0"
  sha256 "ba3dde7e7d954e31215ecf50f441580a8c6ee3e3002d9e2e3f5852919833f0ea"

  url "https://github.com/sharkdp/bat/releases/download/v#{version}/bat-v#{version}-x86_64-apple-darwin.tar.gz"
  name "bat-bin"
  desc "A cat(1) clone with wings."
  homepage "https://github.com/sharkdp/bat"

  binary "bat-v0.20.0-x86_64-apple-darwin/bat"
end
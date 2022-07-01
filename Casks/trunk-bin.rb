cask "trunk-bin" do
  version "0.16.0"
  sha256 "0638206b8b3bd27a92b2dd252cca0560e01c8351755d6212a3278ac0047b58b5"

  url "https://github.com/thedodd/trunk/releases/download/v#{version}/trunk-x86_64-apple-darwin.tar.gz"
  name "trunk-bin"
  desc "Build, bundle & ship your Rust WASM application to the web."
  homepage "https://github.com/thedodd/trunk"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "trunk"
end
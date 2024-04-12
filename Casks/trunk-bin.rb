cask "trunk-bin" do
  version "0.19.2"
  sha256 "62a94c142aeaca4fde6fb11057a1ddbc3f07bc2c877ed09176b970a5c3647a74"

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
cask "trunk-bin" do
  version "0.15.0"
  sha256 "49cb3cb95f144a2b7b7b94bfc30c8139e0289f4004c3e52a0eb9b9d7f4f51bff"

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
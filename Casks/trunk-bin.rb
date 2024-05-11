cask "trunk-bin" do
  version "0.20.1"
  sha256 "838e69507df6c95667e95cf6b4ab0d38694e339e4fadad81ad5ad66359921db3"

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
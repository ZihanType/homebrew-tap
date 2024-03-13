cask "trunk-bin" do
  version "0.19.1"
  sha256 "773358c67bd1bb5c8e6e5ff8800453d1a6fed0d9eb450f8bdef853c8c2b1a94c"

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
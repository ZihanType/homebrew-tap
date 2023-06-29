cask "trunk-bin" do
  version "0.17.1"
  sha256 "bd108fb45b8b95e2feeb3fb13735b337690b3f67105d8a5d7d912502942f87ab"

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
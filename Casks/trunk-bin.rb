cask "trunk-bin" do
  version "0.17.3"
  sha256 "471312843f7982337adf76496d381048b8fe55116c02c04343f8c2e4147b4f4d"

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
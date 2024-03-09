cask "trunk-bin" do
  version "0.19.0"
  sha256 "59e619e66e6f3ce9e39e2adc9b30e633e45ec595c64c9eb325f7aaca41f98583"

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
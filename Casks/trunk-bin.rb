cask "trunk-bin" do
  version "0.18.3"
  sha256 "cc9a13375be46593b22c8dbbed5e6aabc6837cbf2e1846f6f050844bfe23ba24"

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
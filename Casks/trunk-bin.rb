cask "trunk-bin" do
  version "0.18.4"
  sha256 "5c0e137319d2e4667afb7c34b162fe8b6a0d4c3d270d58afa59f239ec24f22ff"

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
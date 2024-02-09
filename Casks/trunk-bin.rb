cask "trunk-bin" do
  version "0.18.8"
  sha256 "db2233c17f66689b367a14ae5fe1f98f337d3d12ae861e8d1e22312306ad70f4"

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
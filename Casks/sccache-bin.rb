cask "sccache-bin" do
  version "0.7.0"
  sha256 "08e3e303fd4ee3a65c7483b2f1f65032a5091936d8b86df153530ea50bc2374f"

  url "https://github.com/mozilla/sccache/releases/download/v#{version}/sccache-v#{version}-x86_64-apple-darwin.tar.gz"
  name "sccache-bin"
  desc "sccache is ccache with cloud storage"
  homepage "https://github.com/mozilla/sccache"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "sccache-v#{version}-x86_64-apple-darwin/sccache"
end
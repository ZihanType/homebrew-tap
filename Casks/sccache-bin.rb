cask "sccache-bin" do
  version "0.3.3"
  sha256 "e68aa0e2716e9cceff7912e09d8028df34cd63d8d60cae832a2d5f5c94da1828"

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
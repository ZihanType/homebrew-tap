cask "sccache-bin" do
  version "0.4.2"
  sha256 "5a2ce4b29b83f1315b63337c5aad2d9e7a0b4aec7b495895bc6a9a45212c7169"

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
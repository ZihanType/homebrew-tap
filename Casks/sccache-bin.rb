cask "sccache-bin" do
  version "0.7.4"
  sha256 "5ef04e4a2dfec6467e611ac5e3dd94342342fb7fe6ca15c933e4fa48f78cac64"

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
cask "sccache-bin" do
  version "0.7.5"
  sha256 "b51897aa0691a65b9c6d60f3cacf6b931addc5f71ee5fcdd29b1ce9e8685d3ca"

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
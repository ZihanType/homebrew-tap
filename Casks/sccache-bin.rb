cask "sccache-bin" do
  version "0.7.2"
  sha256 "00c867ee62f2455244f3fa4c774babb56ce21b640cb98788d2046b1452e5b891"

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
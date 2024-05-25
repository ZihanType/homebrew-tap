cask "sccache-bin" do
  version "0.8.1"
  sha256 "4306fb21606b14e2ce1266b25c40e55c090ea68c2cb54e1c39bfb9b81ea3e342"

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
cask "sccache-bin" do
  version "0.2.15"
  sha256 "908e939ea3513b52af03878753a58e7c09898991905b1ae3c137bb8f10fa1be2"

  url "https://github.com/mozilla/sccache/releases/download/v#{version}/sccache-v#{version}-x86_64-apple-darwin.tar.gz"
  name "sccache-bin"
  desc "sccache is ccache with cloud storage"
  homepage "https://github.com/mozilla/sccache"

  livecheck do
    url :stable
    strategy :github_latest
  end

  binary "sccache-v#{version}-x86_64-apple-darwin/sccache"
end
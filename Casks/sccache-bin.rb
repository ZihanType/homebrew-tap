cask "sccache-bin" do
  version "0.7.3"
  sha256 "0aa633920d7ede4430c16d241449b0211c4228970bbe3d8d8ce6baf9276cdbbc"

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
cask "sccache-bin" do
  version "0.4.1"
  sha256 "a291f1d90c6b25726866f018ec6071fa4d20ca443ad91fe5dfb9740eb4ebc45a"

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
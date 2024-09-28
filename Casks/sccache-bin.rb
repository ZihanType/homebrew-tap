cask "sccache-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.8.2"
  sha256 :no_check

  url "https://github.com/mozilla/sccache/releases/download/v#{version}/sccache-v#{version}-#{arch}-apple-darwin.tar.gz"
  name "sccache-bin"
  desc "sccache is ccache with cloud storage"
  homepage "https://github.com/mozilla/sccache"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "sccache-v#{version}-#{arch}-apple-darwin/sccache"
end
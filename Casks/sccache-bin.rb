cask "sccache-bin" do
  version "0.5.4"
  sha256 "b404cf83dd20c2d7cc9f08ccea1fc593442d87f4112983ba44d9bcefebf15016"

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
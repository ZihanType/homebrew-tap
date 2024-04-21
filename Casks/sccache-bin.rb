cask "sccache-bin" do
  version "0.8.0"
  sha256 "d1b871daf7f96f8d01c50746e588d50e2c54559c0de508257db3cb55b7fb8ec0"

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
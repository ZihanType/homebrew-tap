cask "grcov-bin" do
  version "0.8.19"
  sha256 "8c4a46740c09ec071ad20eaf916175b8cf7322eacb7c37e905f3d2925690c44a"

  url "https://github.com/mozilla/grcov/releases/download/v#{version}/grcov-x86_64-apple-darwin.tar.bz2"
  name "grcov-bin"
  desc "Rust tool to collect and aggregate code coverage data for multiple source files"
  homepage "https://github.com/mozilla/grcov"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "grcov"
end
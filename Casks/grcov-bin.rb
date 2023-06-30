cask "grcov-bin" do
  version "0.8.18"
  sha256 "b5fccffcde800c1bbaec94229b80fc678ad10420d9769b25a447f1c7c5bec573"

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
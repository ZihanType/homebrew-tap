cask "grcov-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.10.1"
  sha256 :no_check

  url "https://github.com/mozilla/grcov/releases/download/v#{version}/grcov-#{arch}-apple-darwin.tar.bz2"
  name "grcov-bin"
  desc "Rust tool to collect and aggregate code coverage data for multiple source files"
  homepage "https://github.com/mozilla/grcov"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "grcov"
end
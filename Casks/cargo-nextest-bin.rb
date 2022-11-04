cask "cargo-nextest-bin" do
  version "0.9.42"
  sha256 "12d9e8ebf0ab5cf2596dea35bee183310348d5c9625f2bda64cfbf4c342e3730"

  url "https://github.com/nextest-rs/nextest/releases/download/cargo-nextest-#{version}/cargo-nextest-#{version}-universal-apple-darwin.tar.gz"
  name "cargo-nextest-bin"
  desc "Next-generation test runner for Rust"
  homepage "https://nexte.st"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "cargo-nextest"
end
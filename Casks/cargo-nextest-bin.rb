cask "cargo-nextest-bin" do
  version "0.9.47"
  sha256 "23ad7efe005bbbc686eabdc4be6f471fabc64ef6caf161d92ec8f0ef9dcb38f5"

  url "https://github.com/nextest-rs/nextest/releases/download/cargo-nextest-#{version}/cargo-nextest-#{version}-universal-apple-darwin.tar.gz"
  name "cargo-nextest-bin"
  desc "Next-generation test runner for Rust"
  homepage "https://nexte.st"

  livecheck do
    url :stable
    regex(/^cargo-nextest[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  binary "cargo-nextest"
end
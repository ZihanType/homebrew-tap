cask "cargo-nextest-bin" do
  version "0.9.52"
  sha256 "d4638b6ec6e8e8d8f3cf4ff8f039665f0a1d4ff2cf7ef6467bdb243e654c9911"

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
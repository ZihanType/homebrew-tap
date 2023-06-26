cask "cargo-nextest-bin" do
  version "0.9.54"
  sha256 "436c10a0c32aaefe3680a8550903f1382436a7954ecea5156f99c7f207516466"

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
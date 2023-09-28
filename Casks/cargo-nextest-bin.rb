cask "cargo-nextest-bin" do
  version "0.9.59"
  sha256 "3137a3184d1d6d5e4c3f3142f2bbb96cb25a2cc912b1b2bcdd8fc9e1c08c89e2"

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
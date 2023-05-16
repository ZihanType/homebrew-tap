cask "cargo-nextest-bin" do
  version "0.9.53"
  sha256 "ccab0a046538cb86a93ee6f05a1d9ceace7878fc7ca39392b681b01dc27fc54e"

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
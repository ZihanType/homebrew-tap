cask "cargo-nextest-bin" do
  version "0.9.44"
  sha256 "ae20bb213ca44898b49b30fad9eb90b00f4997032bd0815f11571109c3e675b2"

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
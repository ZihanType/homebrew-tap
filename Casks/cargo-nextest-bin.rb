cask "cargo-nextest-bin" do
  version "0.9.62"
  sha256 "94155602db22ff1c48f78d0aa53a2f2133ba6c49f17f2a6c36ba9bdcb03fe82e"

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
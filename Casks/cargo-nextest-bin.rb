cask "cargo-nextest-bin" do
  version "0.9.70"
  sha256 "68ba1ae1b69a49fbec9a864b4a207dc0e2abcb4d712595e0a3721a9645a17749"

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
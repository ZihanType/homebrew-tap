cask "cargo-nextest-bin" do
  version "0.9.82"
  sha256 :no_check

  url "https://github.com/nextest-rs/nextest/releases/download/cargo-nextest-#{version}/cargo-nextest-#{version}-universal-apple-darwin.tar.gz"
  name "cargo-nextest-bin"
  desc "Next-generation test runner for Rust"
  homepage "https://github.com/nextest-rs/nextest"

  livecheck do
    url "https://crates.io/api/v1/crates/cargo-nextest"
    regex(%r{.*"newest_version":"(.+?)"}i)
  end

  binary "cargo-nextest"
end
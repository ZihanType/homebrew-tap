cask "cargo-tarpaulin-bin" do
  version "0.28.0"
  sha256 "6bc2f349c837042fc90b3841d9ff5e657c7f5d9ebb2a15a4ba70ab5040587bf7"

  url "https://github.com/xd009642/tarpaulin/releases/download/#{version}/cargo-tarpaulin-x86_64-apple-darwin.tar.gz"
  name "cargo-tarpaulin-bin"
  desc "A code coverage tool for Rust projects"
  homepage "https://github.com/xd009642/tarpaulin"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "cargo-tarpaulin"
end
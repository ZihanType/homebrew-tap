cask "cargo-tarpaulin-bin" do
  version "0.29.1"
  sha256 "6809df4fb7f559e30ed4134abca203fcd92cbe1db5117fa17a7e9c64933ee80b"

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
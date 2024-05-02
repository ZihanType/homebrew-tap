cask "cargo-tarpaulin-bin" do
  version "0.29.0"
  sha256 "df21c946c69b6d653bb59e6ddb0e99c1f184e74f1b2a077a3654427171a37497"

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
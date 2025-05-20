cask "cargo-tarpaulin-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.32.6"
  sha256 :no_check

  url "https://github.com/xd009642/tarpaulin/releases/download/#{version}/cargo-tarpaulin-#{arch}-apple-darwin.tar.gz"
  name "cargo-tarpaulin-bin"
  desc "A code coverage tool for Rust projects"
  homepage "https://github.com/xd009642/tarpaulin"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "cargo-tarpaulin"
end
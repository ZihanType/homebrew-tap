cask "cargo-tarpaulin-bin" do
  version "0.30.0"
  sha256 "cc2b8b84c0f19db57f00b5e2e322c3115a744d2fccc823700f3b7f60dd13a289"

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
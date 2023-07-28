cask "cargo-tarpaulin-bin" do
  version "0.26.1"
  sha256 "6000aa742b2ec44d4c9a2ab5873847703b53597f0ff296c4ae1096c572ce5565"

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
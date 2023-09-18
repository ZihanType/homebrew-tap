cask "cargo-tarpaulin-bin" do
  version "0.27.0"
  sha256 "84c77137ca762c0cda3d4e8330ef3312efe72220da6470e8d657e5e545a11d2b"

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
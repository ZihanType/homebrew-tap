cask "cargo-tarpaulin-bin" do
  version "0.27.3"
  sha256 "ed139aecf50388999d4f724d836c25168cc534939618c4ca085532d5b8f220cd"

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
cask "cargo-tarpaulin-bin" do
  version "0.26.0"
  sha256 "e4640fcdc031dd02b020ed4ddb4aafd2d073299c575d798b638612028b37f0fe"

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
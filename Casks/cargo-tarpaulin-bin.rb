cask "cargo-tarpaulin-bin" do
  version "0.27.2"
  sha256 "6d577a7a21881fd5a57e0e4aedd61c4235f5bacc1e645f3acdd7c8ceceee5115"

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
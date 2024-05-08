cask "cargo-tarpaulin-bin" do
  version "0.29.2"
  sha256 "e489e193d0d520002ad10673f6027ff80cd516a5ffbc8f8e4269f2181428ae0d"

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
cask "rust-analyzer-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-06"
  sha256 :no_check

  url "https://github.com/rust-lang/rust-analyzer/releases/download/#{version}/rust-analyzer-#{arch}-apple-darwin.gz"
  name "rust-analyzer-bin"
  desc "Experimental Rust compiler front-end for IDEs"
  homepage "https://github.com/rust-lang/rust-analyzer"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "rust-analyzer-#{arch}-apple-darwin", target: "rust-analyzer"
end
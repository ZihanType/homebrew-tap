cask "cargo-fuzz-bin" do
  version "0.11.4"
  sha256 "0cf9c6d7a8b3de49eb8a518951aa8a7ad0733244294d075af5bc6486ac5bb2f2"

  url "https://github.com/rust-fuzz/cargo-fuzz/releases/download/#{version}/cargo-fuzz-#{version}-x86_64-apple-darwin.tar.gz"
  name "cargo-fuzz-bin"
  desc "Command line helpers for fuzzing"
  homepage "https://github.com/rust-fuzz/cargo-fuzz"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "cargo-fuzz"
end
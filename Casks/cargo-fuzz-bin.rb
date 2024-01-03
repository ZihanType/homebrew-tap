cask "cargo-fuzz-bin" do
  version "0.11.3"
  sha256 "29d2609b2ab24385b729befeccd015501eb6bd6331c88e2026f19894d33364b2"

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
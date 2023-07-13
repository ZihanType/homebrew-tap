cask "cargo-fuzz-bin" do
  version "0.11.2"
  sha256 "70f0cba45bd015eefe2e6e4b07d5a9e4b3e9eb90e637a2773c7a30ec1792602f"

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
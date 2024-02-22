cask "cargo-fuzz-bin" do
  version "0.12.0"
  sha256 "f28dece7bceefe9069632b677111f157b5c62c7b006c665d191bf562d9b56f8e"

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
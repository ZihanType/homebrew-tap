cask "kache-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.11.0"
  sha256 :no_check

  url "https://github.com/kunobi-ninja/kache/releases/download/v#{version}/kache-#{arch}-apple-darwin.tar.gz"
  name "kache-bin"
  desc "Zero-copy, content-addressed Rust build cache for Rust, C/C++ and more."
  homepage "https://github.com/kunobi-ninja/kache"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "kache"
end
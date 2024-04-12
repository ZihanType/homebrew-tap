cask "cargo-deny-bin" do
  version "0.14.21"
  sha256 "9bf07f9348aee79a0ed18caa399e12eb91f5397333b5b46ecd8f966bc1c657d5"

  url "https://github.com/EmbarkStudios/cargo-deny/releases/download/#{version}/cargo-deny-#{version}-x86_64-apple-darwin.tar.gz"
  name "cargo-deny-bin"
  desc "Cargo plugin for linting your dependencies"
  homepage "https://github.com/EmbarkStudios/cargo-deny"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "cargo-deny"
end
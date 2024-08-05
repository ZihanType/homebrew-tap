cask "cargo-deny-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.16.1"
  sha256 :no_check

  url "https://github.com/EmbarkStudios/cargo-deny/releases/download/#{version}/cargo-deny-#{version}-#{arch}-apple-darwin.tar.gz"
  name "cargo-deny-bin"
  desc "Cargo plugin for linting your dependencies"
  homepage "https://github.com/EmbarkStudios/cargo-deny"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "cargo-deny-#{version}-#{arch}-apple-darwin/cargo-deny"
end
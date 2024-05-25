cask "cargo-deny-bin" do
  version "0.14.24"
  sha256 "47b7b07fb210b871027adb3a08fe85fa1a54e4403b523feaa844f3db029e96c8"

  url "https://github.com/EmbarkStudios/cargo-deny/releases/download/#{version}/cargo-deny-#{version}-x86_64-apple-darwin.tar.gz"
  name "cargo-deny-bin"
  desc "Cargo plugin for linting your dependencies"
  homepage "https://github.com/EmbarkStudios/cargo-deny"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "cargo-deny-#{version}-x86_64-apple-darwin/cargo-deny"
end
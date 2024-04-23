cask "cargo-deny-bin" do
  version "0.14.22"
  sha256 "2a753c46a9848229c7fb63be6b00f50a76b132f9a051df7bbcb4717604b8842e"

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
cask "cargo-deny-bin" do
  version "0.14.23"
  sha256 "d8d3e97d95521dcc2e95a4293b3e774aeee5591cad9994ad49b5d177ca98bf8e"

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
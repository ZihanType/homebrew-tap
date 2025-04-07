cask "cargo-generate-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.23.3"
  sha256 :no_check

  url "https://github.com/cargo-generate/cargo-generate/releases/download/v#{version}/cargo-generate-v#{version}-#{arch}-apple-darwin.tar.gz"
  name "cargo-generate-bin"
  desc "cargo, make me a project"
  homepage "https://github.com/cargo-generate/cargo-generate"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "cargo-generate"
end
cask "cargo-generate-bin" do
  version "0.19.0"
  sha256 "ea37d586e7383178c9a0c6fc82351c377d86e35f647070624d368ecea4d82e05"

  url "https://github.com/cargo-generate/cargo-generate/releases/download/v#{version}/cargo-generate-v#{version}-x86_64-apple-darwin.tar.gz"
  name "cargo-generate-bin"
  desc "cargo, make me a project"
  homepage "https://github.com/cargo-generate/cargo-generate"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "cargo-generate"
end
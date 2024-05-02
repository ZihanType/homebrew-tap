cask "cargo-generate-bin" do
  version "0.21.0"
  sha256 "daeb472fe2d652efa97ab0a5ab2a02ea9cc4ce0c02573652c93260541c5f6d1a"

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
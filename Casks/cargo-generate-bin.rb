cask "cargo-generate-bin" do
  version "0.18.2"
  sha256 "db340817e28aa8cb1914bda5be1756598f5869917bfda347c3c4a74304177c0a"

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
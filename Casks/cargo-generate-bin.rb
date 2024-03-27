cask "cargo-generate-bin" do
  version "0.20.0"
  sha256 "d34eadde714a76228d18b3bbeb63ea8e42199bd278461c1b44b8914d4c658f52"

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
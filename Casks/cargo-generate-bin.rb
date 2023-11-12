cask "cargo-generate-bin" do
  version "0.18.5"
  sha256 "ec5fdd68cc6fea8a816d05a2abfceb910716883b356cbded363bf8467ca6ac9b"

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
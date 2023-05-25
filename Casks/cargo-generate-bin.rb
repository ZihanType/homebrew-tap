cask "cargo-generate-bin" do
  version "0.18.3"
  sha256 "7f8ce7b78eafe92d469412014d467d65c33bb81a342398797150b5d58f28dc35"

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
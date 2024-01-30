cask "trunk-bin" do
  version "0.18.7"
  sha256 "7f3858bfb3dec3573b586a8e64964969bdd70871c5b970f88732e1788165d383"

  url "https://github.com/thedodd/trunk/releases/download/v#{version}/trunk-x86_64-apple-darwin.tar.gz"
  name "trunk-bin"
  desc "Build, bundle & ship your Rust WASM application to the web."
  homepage "https://github.com/thedodd/trunk"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "trunk"
end
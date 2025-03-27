cask "trunk-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.21.11"
  sha256 :no_check

  url "https://github.com/thedodd/trunk/releases/download/v#{version}/trunk-#{arch}-apple-darwin.tar.gz"
  name "trunk-bin"
  desc "Build, bundle & ship your Rust WASM application to the web."
  homepage "https://github.com/thedodd/trunk"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "trunk"
end
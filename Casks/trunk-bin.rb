cask "trunk-bin" do
  version "0.20.2"
  sha256 "e24f60a52d5573c5adfc59493891634f7f2825463b04160347a316cda44b496f"

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
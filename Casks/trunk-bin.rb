cask "trunk-bin" do
  version "0.20.0"
  sha256 "3b31275b94174d78566d8b7ad81404c68a30b45012b8d8c68973433d8b787976"

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
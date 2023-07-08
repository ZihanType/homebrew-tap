cask "trunk-bin" do
  version "0.17.2"
  sha256 "bae2873a96f69562f50a601200afdce37329d0c7e2798abf2f5d0e7a71a84480"

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
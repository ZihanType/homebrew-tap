cask "trunk-bin" do
  version "0.19.3"
  sha256 "d146e59ca6c4f2dca250c59312cb26ea91f0c2bd408d32cc3745a302b2338aad"

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
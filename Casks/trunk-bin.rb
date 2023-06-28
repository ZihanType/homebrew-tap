cask "trunk-bin" do
  version "0.17.0"
  sha256 "f0b43c7591156a8656773c2dbfeefc6efe76e8558cefb324aed3d0b8af625258"

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
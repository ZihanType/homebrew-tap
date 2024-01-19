cask "trunk-bin" do
  version "0.18.6"
  sha256 "3c9076dd02d12c5637a29b262158831bd87b6ce72c20f5fed800cc969ec6ae16"

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
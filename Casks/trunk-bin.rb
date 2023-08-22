cask "trunk-bin" do
  version "0.17.5"
  sha256 "dd16f335ff1d19c9ba5b7cde8682ce91c609cd8e6f657de99a2d242d2fbb1ce2"

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
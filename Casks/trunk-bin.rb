cask "trunk-bin" do
  version "0.18.0"
  sha256 "5e7b2a582e797e0954f265e4c240e6dbc1100ae0d843a3178415306b9c3bf9db"

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
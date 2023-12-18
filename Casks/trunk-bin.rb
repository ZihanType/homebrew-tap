cask "trunk-bin" do
  version "0.18.1"
  sha256 "bd17bde563a5fddab82d5375b123f7dcb0f2e587326efb79afa5e025dc87740e"

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
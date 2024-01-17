cask "trunk-bin" do
  version "0.18.5"
  sha256 "62a4fb51962345720be579d791d192f953cf47a58ce41ec414c0e6b089b9348a"

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
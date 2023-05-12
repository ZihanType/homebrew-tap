cask "wasm-pack-bin" do
  version "0.11.1"
  sha256 "6925ede1db571ceca80f2d48533cd9983f152731d95b794de6826121e5cd603f"

  url "https://github.com/rustwasm/wasm-pack/releases/download/v#{version}/wasm-pack-v#{version}-x86_64-apple-darwin.tar.gz"
  name "wasm-pack-bin"
  desc "Your favorite rust -> wasm workflow tool!"
  homepage "https://github.com/rustwasm/wasm-pack"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "wasm-pack-v#{version}-x86_64-apple-darwin/wasm-pack"
end
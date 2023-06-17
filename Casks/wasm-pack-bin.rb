cask "wasm-pack-bin" do
  version "0.12.0"
  sha256 "a2fb0a8ab4b5ae1f7dd459af4634d062d7ca33200b1fe6fb527c3f3797b28fe3"

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
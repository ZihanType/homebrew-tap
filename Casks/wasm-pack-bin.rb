cask "wasm-pack-bin" do
  version "0.12.1"
  sha256 :no_check

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
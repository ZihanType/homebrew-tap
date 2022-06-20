cask "wasm-pack-bin" do
  version "0.10.3"
  sha256 "159751e24de3f50462140621c033a6bf8e89cbf1930e60cc725e2b0e84f23035"

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
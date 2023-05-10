cask "wasm-bindgen-bin" do
  version "0.2.85"
  sha256 "93ad6a22d21a8f3ef1a1f7fabeea794c654978b9122e503b6f884a0b6f9d8aa5"

  url "https://github.com/rustwasm/wasm-bindgen/releases/download/#{version}/wasm-bindgen-#{version}-x86_64-apple-darwin.tar.gz"
  name "wasm-bindgen-bin"
  desc "Facilitating high-level interactions between Wasm modules and JavaScript"
  homepage "https://github.com/rustwasm/wasm-bindgen"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "wasm-bindgen-#{version}-x86_64-apple-darwin/wasm-bindgen"
end
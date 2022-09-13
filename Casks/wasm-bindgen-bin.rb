cask "wasm-bindgen-bin" do
  version "0.2.83"
  sha256 "71796da092c3f4a865482d594da7f9a9cb5c1f45adde67a20f990cf8fd004e30"

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
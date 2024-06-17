cask "wasm-bindgen-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.92"

  url "https://github.com/rustwasm/wasm-bindgen/releases/download/#{version}/wasm-bindgen-#{version}-#{arch}-apple-darwin.tar.gz"
  name "wasm-bindgen-bin"
  desc "Facilitating high-level interactions between Wasm modules and JavaScript"
  homepage "https://github.com/rustwasm/wasm-bindgen"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "wasm-bindgen-#{version}-#{arch}-apple-darwin/wasm-bindgen"
end
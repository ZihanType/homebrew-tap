cask "wasm-bindgen-bin" do
  version "0.2.84"
  sha256 "554b920b01776ce0fcf74a6332f33c15640a0e8fcee3c921311545236a2f01f8"

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
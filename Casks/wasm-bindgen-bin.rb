cask "wasm-bindgen-bin" do
  version "0.2.91"
  sha256 "8c9378515f5162d77c8bbec8925e2444e4509fc5fd4e42c218b70bd7e7b5c34d"

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
cask "wasm-bindgen-bin" do
  version "0.2.86"
  sha256 "615d68eabb39d379308b8af55071f05257862be86db7a116a8db141b85e16c8d"

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
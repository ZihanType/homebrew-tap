cask "wabt-bin" do
  version "1.0.34"
  sha256 "b5c93c088dae1cd38a7dc94319c60d2b6653a48ddce0f5ca93c8f0858a00e714"

  url "https://github.com/WebAssembly/wabt/releases/download/#{version}/wabt-#{version}-macos-12.tar.gz"
  name "wabt-bin"
  desc "Web Assembly Binary Toolkit"
  homepage "https://github.com/WebAssembly/wabt"

  livecheck do
    url :stable
    strategy :github_latest
  end

  binary "wabt-#{version}/bin/spectest-interp"
  binary "wabt-#{version}/bin/wasm-decompile"
  binary "wabt-#{version}/bin/wasm-interp"
  binary "wabt-#{version}/bin/wasm-objdump"
  binary "wabt-#{version}/bin/wasm-opcodecnt"
  binary "wabt-#{version}/bin/wasm-strip"
  binary "wabt-#{version}/bin/wasm-validate"
  binary "wabt-#{version}/bin/wasm2c"
  binary "wabt-#{version}/bin/wasm2wat"
  binary "wabt-#{version}/bin/wast2json"
  binary "wabt-#{version}/bin/wat-desugar"
  binary "wabt-#{version}/bin/wat2wasm"
end
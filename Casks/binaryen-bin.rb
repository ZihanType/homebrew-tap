cask "binaryen-bin" do
  version "113"
  sha256 "080f3b56dc2cd8a63599e5baa892d118143d1d511a9420676bcf75fc74a3e9ab"

  url "https://github.com/WebAssembly/binaryen/releases/download/version_#{version}/binaryen-version_#{version}-x86_64-macos.tar.gz"
  name "binaryen-bin"
  desc "Compiler infrastructure and toolchain library for WebAssembly"
  homepage "https://github.com/WebAssembly/binaryen"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "bin/binaryen-unittests"
  binary "bin/wasm-as"
  binary "bin/wasm-ctor-eval"
  binary "bin/wasm-dis"
  binary "bin/wasm-emscripten-finalize"
  binary "bin/wasm-fuzz-types"
  binary "bin/wasm-merge"
  binary "bin/wasm-metadce"
  binary "bin/wasm-opt"
  binary "bin/wasm-reduce"
  binary "bin/wasm-shell"
  binary "bin/wasm-split"
  binary "bin/wasm2js"
end
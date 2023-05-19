cask "binaryen-bin" do
  version "113"
  sha256 "080f3b56dc2cd8a63599e5baa892d118143d1d511a9420676bcf75fc74a3e9ab"

  url "https://github.com/WebAssembly/binaryen/releases/download/version_#{version}/binaryen-version_#{version}-x86_64-macos.tar.gz"
  name "binaryen-bin"
  desc "Compiler infrastructure and toolchain library for WebAssembly"
  homepage "https://github.com/WebAssembly/binaryen"

  livecheck do
    url "https://github.com/WebAssembly/binaryen"
    strategy :page_match
    regex(%r{.*/WebAssembly/binaryen/releases/tag/version_([.\d]+)}i)
  end

  binary "binaryen-version_#{version}/bin/binaryen-unittests"
  binary "binaryen-version_#{version}/bin/wasm-as"
  binary "binaryen-version_#{version}/bin/wasm-ctor-eval"
  binary "binaryen-version_#{version}/bin/wasm-dis"
  binary "binaryen-version_#{version}/bin/wasm-emscripten-finalize"
  binary "binaryen-version_#{version}/bin/wasm-fuzz-types"
  binary "binaryen-version_#{version}/bin/wasm-merge"
  binary "binaryen-version_#{version}/bin/wasm-metadce"
  binary "binaryen-version_#{version}/bin/wasm-opt"
  binary "binaryen-version_#{version}/bin/wasm-reduce"
  binary "binaryen-version_#{version}/bin/wasm-shell"
  binary "binaryen-version_#{version}/bin/wasm-split"
  binary "binaryen-version_#{version}/bin/wasm2js"
end
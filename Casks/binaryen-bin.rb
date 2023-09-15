cask "binaryen-bin" do
  version "116"
  sha256 "266f63d3d8d9e17d5e532b8fc6c5340f92b3fea2020a634957a6dd938294ba56"

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
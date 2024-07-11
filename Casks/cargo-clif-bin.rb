cask "cargo-clif-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version :latest
  sha256 :no_check

  url "https://github.com/rust-lang/rustc_codegen_cranelift/releases/download/dev/cg_clif-#{arch}-apple-darwin.tar.xz"
  name "cargo-clif-bin"
  desc "Cranelift based backend for rustc"
  homepage "https://github.com/rust-lang/rustc_codegen_cranelift"

  binary "bin/cargo-clif"
  binary "bin/rustc-clif"
  binary "bin/rustdoc-clif"
end
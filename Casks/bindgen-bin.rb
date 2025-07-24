cask "bindgen-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.72.0"
  sha256 :no_check

#   url "https://github.com/rust-lang/rust-bindgen/releases/download/v#{version}/bindgen-cli-#{arch}-apple-darwin.tar.xz"
  url "https://github.com/ZihanType/homebrew-tap/releases/download/v#{version}/bindgen-cli-#{arch}-apple-darwin.tar.xz"
  name "bindgen-bin"
  desc "Automatically generates Rust FFI bindings to C (and some C++) libraries"
  homepage "https://github.com/rust-lang/rust-bindgen"

  livecheck do
    url "https://crates.io/api/v1/crates/bindgen-cli"
    regex(%r{.*"max_stable_version":"(.+?)"}i)
  end

  binary "bindgen-cli-#{arch}-apple-darwin/bindgen"
end
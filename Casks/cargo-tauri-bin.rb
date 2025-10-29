cask "cargo-tauri-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.9.2"
  sha256 :no_check

  url "https://github.com/tauri-apps/tauri/releases/download/tauri-cli-v#{version}/cargo-tauri-#{arch}-apple-darwin.zip"
  name "cargo-tauri-bin"
  desc "Command line interface for building Tauri apps"
  homepage "https://github.com/tauri-apps/tauri"

  livecheck do
    url "https://crates.io/api/v1/crates/tauri-cli"
    regex(%r{.*"max_stable_version":"(.+?)"}i)
  end

  binary "cargo-tauri"
end
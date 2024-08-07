cask "cargo-tauri-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.0.0-rc.1"
  sha256 :no_check

  url "https://github.com/tauri-apps/tauri/releases/download/tauri-cli-v#{version}/cargo-tauri-#{arch}-apple-darwin.zip"
  name "cargo-tauri-bin"
  desc "Command line interface for building Tauri apps"
  homepage "https://github.com/tauri-apps/tauri"

  livecheck do
    url "https://github.com/tauri-apps/tauri"
    strategy :page_match
    regex(%r{.*/tauri-apps/tauri/releases/tag/tauri-cli-v(.+)}i)
  end

  binary "cargo-tauri"
end
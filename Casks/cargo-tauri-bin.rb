cask "cargo-tauri-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.2.2"
  sha256 :no_check

  url "https://github.com/tauri-apps/tauri/releases/download/tauri-cli-v#{version}/cargo-tauri-#{arch}-apple-darwin.zip"
  name "cargo-tauri-bin"
  desc "Command line interface for building Tauri apps"
  homepage "https://github.com/tauri-apps/tauri"

  livecheck do
    url "https://github.com/tauri-apps/tauri/releases"
    strategy :page_match
    regex(%r{.*/tauri-apps/tauri/releases/tag/tauri-cli-v(.+)" data-view-component="true"}i)
  end

  binary "cargo-tauri"
end
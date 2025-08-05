cask "create-tauri-app-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.6.2"
  sha256 :no_check

#   url "https://github.com/tauri-apps/create-tauri-app/releases/download/create-tauri-app-v#{version}/create-tauri-app-#{arch}-apple-darwin"
  url "https://github.com/ZihanType/homebrew-tap/releases/download/create-tauri-app-v#{version}/create-tauri-app-#{arch}-apple-darwin"
  name "create-tauri-app-bin"
  desc "Rapidly scaffold out a new tauri app project."
  homepage "https://github.com/tauri-apps/create-tauri-app"

  livecheck do
    url "https://crates.io/api/v1/crates/create-tauri-app"
    regex(%r{.*"max_stable_version":"(.+?)"}i)
  end

  binary "create-tauri-app-#{arch}-apple-darwin", target: "create-tauri-app"
end
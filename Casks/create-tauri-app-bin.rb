cask "create-tauri-app-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.5.2"
  sha256 :no_check

  url "https://github.com/tauri-apps/create-tauri-app/releases/download/create-tauri-app-v#{version}/create-tauri-app-#{arch}-apple-darwin"
  name "create-tauri-app-bin"
  desc "Rapidly scaffold out a new tauri app project."
  homepage "https://github.com/tauri-apps/create-tauri-app"

  livecheck do
    url "https://github.com/tauri-apps/create-tauri-app/releases"
    strategy :page_match
    regex(%r{.*/tauri-apps/create-tauri-app/releases/tag/create-tauri-app-v([.\d]+)}i)
  end

  binary "create-tauri-app-#{arch}-apple-darwin", target: "create-tauri-app"
end
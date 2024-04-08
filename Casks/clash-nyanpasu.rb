cask "clash-nyanpasu" do
  version "1.5.1"
  sha256 "f2459742d58cb2f991fe3f396728c8c1879a072212a706af9e2a7cbea6fae3a5"

  url "https://github.com/keiko233/clash-nyanpasu/releases/download/v#{version}/Clash.Nyanpasu_#{version}_x64.dmg"
  name "Clash Nyanpasu"
  desc "A Clash GUI based on tauri."
  homepage "https://github.com/keiko233/clash-nyanpasu"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash Nyanpasu.app"

  zap trash: [
    "~/.config/clash-nyanpasu",
    "~/Library/Saved Application State/moe.elaina.clash.nyanpasu.savedState",
    "~/Library/WebKit/moe.elaina.clash.nyanpasu",
    "~/Library/Caches/moe.elaina.clash.nyanpasu",
  ]
end
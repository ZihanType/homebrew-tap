cask "clash-nyanpasu" do
  version "1.4.1"
  sha256 "c4c28b1d5cc798f8cfca02f6408c13710022b43fe3205f5950a094c2e5bb145f"

  url "https://github.com/keiko233/clash-nyanpasu/releases/download/v#{version}/Clash.Nyanpasu_#{version}_x64.dmg"
  name "Clash Nyanpasu"
  desc "A Clash GUI based on tauri."
  homepage "https://github.com/keiko233/clash-nyanpasu"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash Nyanpasu.app"
end
cask "clash-nyanpasu" do
  version "1.4.3"
  sha256 "31cca0554ac5569a919e6bd6d212c0492c1bdc6d4a7f7f5f94c2a0cc3e45c359"

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
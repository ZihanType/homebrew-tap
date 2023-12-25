cask "clash-nyanpasu" do
  version "1.4.2"
  sha256 "8d99046c64dec68acd219fbdc529a019e2368e75ca86b2dec8d51206ac932803"

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
cask "clash-nyanpasu" do
  version "1.4.5"
  sha256 "0d63a1fa420466b54cb1e669c8415776ac88dba6fc0b1141ccc6ee6386a6a7f9"

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
cask "clash-nyanpasu" do
  version "1.4.4"
  sha256 "7c67e20a6ec415ae8fa90b2df1b20e1de04c8955421259685eb2f8af6079a951"

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
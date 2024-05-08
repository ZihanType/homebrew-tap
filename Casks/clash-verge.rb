cask "clash-verge" do
  version "1.6.2"
  sha256 "7e0f3efa73e6b56f575ecc1c98cb7550361250301c69157bc4b8b306267f2dd3"

  url "https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v#{version}/Clash.Verge_#{version}_x64.dmg"
  name "Clash Verge"
  desc "Continuation of Clash Verge - A Clash Meta GUI based on Tauri"
  homepage "https://github.com/clash-verge-rev/clash-verge-rev"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash Verge.app"
end
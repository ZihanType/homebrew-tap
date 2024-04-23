cask "clash-verge" do
  version "1.6.0"
  sha256 "16b4a1693865f61823b0fcf641096ef46b8291987e909f906940835b63e1398c"

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
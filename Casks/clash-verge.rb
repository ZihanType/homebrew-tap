cask "clash-verge" do
  version "1.6.4"
  sha256 "6ff12a8a1970ad65fb8ce38e5f5ba97880526d49f7f04eeb000ad8e09103df5f"

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
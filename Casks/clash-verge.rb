cask "clash-verge" do
  version "1.5.10"
  sha256 "c4069d134420d0fa27babe0c03d9a02371c948169c94003075d5665e48aa226f"

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
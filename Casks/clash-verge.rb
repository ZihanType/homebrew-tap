cask "clash-verge" do
  version "1.6.6"
  sha256 "90eb3a5f5a8175d73e63616e4e9afff7db4b438924b9854963bf8f06230c9cc8"

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
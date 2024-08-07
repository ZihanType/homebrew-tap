cask "hiddify-next" do
  version "1.4.0"
  sha256 :no_check

  url "https://github.com/hiddify/hiddify-next/releases/download/v#{version}/Hiddify-MacOS.dmg"
  name "Hiddify-Next"
  desc "Multi-platform auto-proxy client, supporting Sing-box, X-ray, TUIC, Hysteria, Reality, Trojan, SSH etc. It’s an open-source, secure and ad-free."
  homepage "https://github.com/hiddify/hiddify-next"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Hiddify.app"

  zap trash: [
    "~/Library/Application Support/app.hiddify.com",
    "~/Library/Preferences/app.hiddify.com.plist",
    "~/Library/Caches/SentryCrash/Hiddify Next",
  ]
end
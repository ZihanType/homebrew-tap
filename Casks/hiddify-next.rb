cask "hiddify-next" do
  version "1.1.1"
  sha256 "ef238c7b02955fffdb47421fe371a30f7c12839a17a83c3dee3c3f95a5f67379"

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
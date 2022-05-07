cask "yesplaymusic-0.4.5" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.4.5"

  if Hardware::CPU.intel?
    sha256 "9af99a4ab0e820378e572964242558f7bc915077c423c0b2b262ab80152b1463"
  else
    sha256 "428d37ac64bfa81e9273522e9d4ec5f35589fedfa6591ed946c2982bdecb1e29"
  end

  url "https://github.com/qier222/YesPlayMusic/releases/download/v#{version}/YesPlayMusic-mac-#{version}#{arch}.dmg"
  name "YesPlayMusic"
  desc "Third-party NetEase cloud player"
  homepage "https://github.com/qier222/YesPlayMusic"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "YesPlayMusic.app"

  zap trash: [
    "~/Library/Application Support/YesPlayMusic",
    "~/Library/Preferences/com.electron.yesplaymusic.plist",
    "~/Library/Saved Application State/com.electron.yesplaymusic.savedState",
  ]
end
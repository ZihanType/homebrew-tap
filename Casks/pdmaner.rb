cask "pdmaner" do
  version "4.6.0"
  sha256 "bf7ea03f5f6f2e0d07f3663c52afed6ef12da8f2b23f04ffb4e147688b9657be"

  url "https://github.com/ZihanType/homebrew-tap/releases/download/pdmaner-v#{version}/PDManer-mac_v#{version}.dmg"
  name "PDManer"
  desc "PDManer元数建模"
  homepage "https://gitee.com/robergroup/pdmaner"

  livecheck do
    url "https://gitee.com/robergroup/pdmaner"
    strategy :page_match
    regex(%r{.*/robergroup/pdmaner/releases/tag/v([.\d]+)}i)
  end

  app "PDManer.app"

  zap trash: [
    "~/Library/Application Support/PDManer",
    "~/Library/Saved Application State/PDManer.savedState",
    "~/Library/Preferences/PDManer.plist",
  ]
end
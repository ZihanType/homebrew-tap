cask "pdmaner" do
  version "4.2.0"
  sha256 "470eab8ed9d61be0b07b23132b2fdfa4f36bb62aeb5b545b64939c122ecf3c07"

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
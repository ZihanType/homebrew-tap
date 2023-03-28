cask "pdmaner" do
  version "4.5.1"
  sha256 "09b551fba220c76dd5e707c149662900fe8393e4e5cdd00b650c7cfedb59827f"

  url "https://github.com/ZihanType/homebrew-tap/releases/download/pdmaner-v#{version}/PDManer-mac_x64_v#{version}.dmg"
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
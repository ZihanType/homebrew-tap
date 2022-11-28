cask "pdmaner" do
  version "4.2.2"
  sha256 "5bc3fab0c0ea2e96f1dd012c83f8ee6df2a7f55c5a458f1c84ec63a9a1deeda5"

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
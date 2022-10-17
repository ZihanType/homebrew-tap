cask "pdmaner" do
  version "4.2.0"
  sha256 "aeb18fe498f6699c2417d00720619495c09069d78a25d31fbbbc9fce90d071cb"

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
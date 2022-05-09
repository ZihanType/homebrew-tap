cask "pdmaner" do
  version "4.1.0"
  sha256 "2a9a9773df9b12a09850045e365e1c7ad555916a92a83d6f431aea6a6ced298e"

  url "http://chiner-release.httpchk.com/PDManer-mac_v#{version}.dmg"
  name "PDManer"
  desc "PDManer元数建模"
  homepage "https://gitee.com/robergroup/pdmaner"

  livecheck do
    url "https://gitee.com/robergroup/pdmaner"
    strategy :page_match
    regex(%r{.*/robergroup/pdmaner/releases/v([.\d]+)"}i)
  end

  app "PDManer.app"

  zap trash: [
    "~/Library/Application Support/PDManer",
    "~/Library/Saved Application State/PDManer.savedState",
    "~/Library/Preferences/PDManer.plist",
  ]
end
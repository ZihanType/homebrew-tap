cask "pdmaner" do
  version "4.1.1"
  sha256 "e7dd0b9badd5efe0800e5c22f93340e7186bd16cc22815511fc20f8ec3db9a50"

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
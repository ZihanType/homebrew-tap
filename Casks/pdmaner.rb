cask "pdmaner" do
  version "4.1.4"
#   sha256 "c11064238bc292d05b33d93f16a4c078a841857d4aa063a33a6027157de73f5a"

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
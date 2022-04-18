cask "pdmaner" do
  version "4.0.0"
  sha256 "68332ec5e4ccb37027aec6e3964cf062b8fc6649d70f756b69733bcbd7cec607"

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
end
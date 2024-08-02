cask "edgedriver" do
  version "105.0.1343.42"
  sha256 :no_check
  linkid = Hardware::CPU.intel? ? "2069148" : "2093504"

  url "https://msedgedriver.azureedge.net/#{version}/edgedriver_mac64.zip"
  name "EdgeDriver"
  desc "Automated testing of webapps for Microsoft Edge"
  homepage "https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=#{linkid}"
    strategy :header_match
  end

  binary "msedgedriver"
end
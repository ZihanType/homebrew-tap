cask "edgedriver" do
  version "104.0.1293.54"
  sha256 "8286732d150568ce21fbfc35f6045b594b4e7e5f1e49e71831be07c20bff3433"
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
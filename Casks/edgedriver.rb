cask "edgedriver" do
  version "105.0.1343.33"
  sha256 "8ba14b0931b50b180510a2e2ed8bb63e534e26ebc09c766b03eac60852291af1"
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
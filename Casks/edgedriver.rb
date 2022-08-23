cask "edgedriver" do
  version "104.0.1293.63"
  sha256 "5470f79f487003d1e91e58fec64f044f3d4167cdbe10461aab414288ced02e7f"
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
cask "edgedriver" do
  version "105.0.1343.42"
  sha256 "eea4f49cd1a626b6b42e97dd06aa1e059fce2de696abc5c3d288183fe8272171"
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
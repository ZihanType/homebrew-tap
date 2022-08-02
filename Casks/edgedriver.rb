cask "edgedriver" do
  version "103.0.1264.77"
  sha256 "c922d9fe35f880861376cd6d97c5e30a739a32c7a574b52f1e7ee00dc1825af0"

  url "https://msedgedriver.azureedge.net/#{version}/edgedriver_mac64.zip",
  name "EdgeDriver"
  desc "Automated testing of webapps for Microsoft Edge"
  homepage "https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=#{linkid}"
    strategy :header_match
  end

  binary "msedgedriver"
end
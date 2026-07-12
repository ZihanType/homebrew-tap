cask "proxypin" do
  version "1.3.0"
  sha256 :no_check

  url "https://github.com/wanghongenpin/proxypin/releases/download/v#{version}/proxypin-macos.dmg"
  name "ProxyPin"
  desc "Open source free capture HTTP(S) traffic software ProxyPin, supporting full platform systems"
  homepage "https://github.com/wanghongenpin/proxypin"

  depends_on macos: :ventura

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ProxyPin.app"

  zap trash: [
    # "~/Library/Application Support/Snapzy",
    # "~/Library/Preferences/Snapzy.plist",
    # "~/Library/Caches/Snapzy",
  ]
end
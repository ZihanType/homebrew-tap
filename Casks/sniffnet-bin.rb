cask "sniffnet-bin" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.4.0"
  sha256 :no_check

  url "https://github.com/GyulyVGC/sniffnet/releases/download/v#{version}/Sniffnet_macOS_#{arch}.dmg"
  name "sniffnet-bin"
  desc "Cross-platform application to monitor your network traffic"
  homepage https://github.com/GyulyVGC/sniffnet

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Sniffnet.app"
end
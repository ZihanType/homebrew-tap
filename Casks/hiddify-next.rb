cask "hiddify-next" do
  version "0.14.20"
  sha256 "9b566df627528355f76bfd18fd255a51f61951cc5369cfd9c2e06d2b1e30d527"

  url "https://github.com/hiddify/hiddify-next/releases/download/v#{version}/hiddify-macos-universal.zip"
  name "Hiddify-Next"
  desc "Multi-platform auto-proxy client, supporting Sing-box, X-ray, TUIC, Hysteria, Reality, Trojan, SSH etc. It’s an open-source, secure and ad-free."
  homepage "https://hiddify.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Hiddify Next.app"
end
cask "vmr-bin" do
  version "0.6.2"
  sha256 "845f098ec3e9e849cce20be2c26b73e4ed0bc195ee797b27e2617b23b0d84faa"

  url "https://github.com/gvcgo/version-manager/releases/download/v#{version}/vmr_darwin-amd64.zip"
  name "vmr-bin"
  desc "simple, cross-platform, and well-designed version manager for multiple sdks and tools"
  homepage "https://github.com/gvcgo/version-manager"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "vmr"
end
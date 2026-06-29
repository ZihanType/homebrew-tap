cask "snapzy" do
  version "1.27.0"
  sha256 :no_check

  url "https://github.com/duongductrong/Snapzy/releases/download/v#{version}/Snapzy-v#{version}.dmg"
  name "Snapzy"
  desc "Native macOS screenshots, recording, annotation, and editing from the menu bar"
  homepage "https://github.com/duongductrong/Snapzy"

  depends_on macos: :ventura

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Snapzy.app"

  zap trash: [
    "~/Library/Application Support/Snapzy",
    "~/Library/Preferences/Snapzy.plist",
    "~/Library/Caches/Snapzy",
  ]

  caveats <<~EOS
    Snapzy is not signed with an Apple Developer ID certificate.
    On first launch, macOS may block the app. To open it:
      Right-click Snapzy.app → Open → Open

    Or run:
      xattr -cr /Applications/Snapzy.app
  EOS
end
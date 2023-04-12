cask "postcat" do
  version "0.5.1"
  sha256 "36f372bfc82a37cc9fb5e09c095de7bbc0b959769936a6faea741a1656dc6290"

  url "https://github.com/Postcatlab/postcat/releases/download/v#{version}/Postcat-#{version}-mac.zip"
  name "Postcat"
  desc "API development and testing tool"
  homepage "https://github.com/Postcatlab/postcat"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Postcat.app"

  zap trash: [
    "~/.postcat",
    "~/Library/Application Support/postcat",
    "~/Library/Saved Application State/.postcat.io.savedState",
    "~/Library/Preferences/.postcat.io.plist",
    "~/Library/Logs/postcat",
  ]
end
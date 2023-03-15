cask "postcat" do
  version "0.4.0"
  sha256 "1ff8431ba516302de22bd6764c0d0c900a7eccb42883419e7e0273368f4c1ba5"

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
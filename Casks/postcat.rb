cask "postcat" do
  version "0.3.2"
  sha256 "630b9c83c5b8aa268c3c883649fa7c663e244b2d4a9b739ae0c8bd98479b3efa"

  url "https://github.com/Postcatlab/postcat/releases/download/v#{version}/Postcat-#{version}-mac.zip"
  name "Postcat"
  desc "API development and testing tool"
  homepage "https://github.com/Postcatlab/postcat"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Postcat.app"
end
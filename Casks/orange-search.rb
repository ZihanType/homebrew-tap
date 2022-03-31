cask "orange-search" do
  version "0.4.0"
  sha256 "fc7777f350ff269d486372358ecc7c320d1a2a526fa82660ac26acf8532788f1"

  url "https://github.com/naaive/orange/releases/download/orange-v#{version}/Orange_#{version}_x64.dmg"
  name "orange-search"
  desc "Cross-platform local file search engine."
  homepage "https://github.com/naaive/orange"

  livecheck do
    url "https://github.com/naaive/orange/releases"
    strategy :page_match
    regex(%r{orange-v([.\d]+)/Orange_([.\d]+)_x64.dmg}i)
  end

  app "Orange.app"

  zap trash: [
    "~/Library/Application Support/com.github.Orange",
  ]
end
cask "orange-search" do
  version "0.5.0"
  sha256 "7d0e9ccb8cc1683c721609c14757abb5d5c10cf455ac4700958712b93eda3215"

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
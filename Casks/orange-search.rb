cask "orange-search" do
  version "0.6.4"
  sha256 "f81a33b41b5bb4c91bd90ce199ed3a8d194d20245aab456085b2f05c0ff5e161"

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
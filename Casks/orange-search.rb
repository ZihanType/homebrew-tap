cask "orange-search" do
  version "0.6.0"
  sha256 "17c95ef6e4127e78b985887bc8ab30c4caedb72288b4336736d4ed5a20042da5"

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
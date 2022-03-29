cask "orange-search" do
  version "0.3.0"
  sha256 "31e82724dba16ddce3a1a6d08765e6519f51d3dbcc8a00a3713d95c146f68369"

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
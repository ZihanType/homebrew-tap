cask "orange" do
  version "0.1.0"
  sha256 "4d2d3f9c6bde0916c2e4a139a71cc782365bc24a62de22b310d361ec5e8bbc33"

  url "https://github.com/naaive/orange/releases/download/orange-v#{version}/Orange_#{version}_x64.dmg"
  name "orange"
  desc "Cross-platform local file search engine."
  homepage "https://github.com/naaive/orange"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Orange.app"
end
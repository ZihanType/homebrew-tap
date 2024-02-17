cask "pandoc-bin" do
  version "3.1.12"
  sha256 "2ca867f52987765fa1676ffd9d8b04ba0cf2dc3a3c6c16c48b5b057878225099"

  url "https://github.com/jgm/pandoc/releases/download/#{version}/pandoc-#{version}-x86_64-macOS.zip"
  name "pandoc-bin"
  desc "Swiss-army knife of markup format conversion"
  homepage "https://pandoc.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "pandoc-#{version}-x86_64/bin/pandoc"
end
cask "pandoc-bin" do
  version "3.1.9"
  sha256 "820dd71c0ff59c37e17de22a19ff67a374a0d43fdeee695241556067ddf99bbc"

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
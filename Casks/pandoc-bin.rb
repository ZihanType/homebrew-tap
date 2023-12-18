cask "pandoc-bin" do
  version "3.1.11"
  sha256 "56a337e08f7e03ca062fbd4c4ac182523c35429d1441d826a138a8c9dcc2354b"

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
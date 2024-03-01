cask "pandoc-bin" do
  version "3.1.12.2"
  sha256 "f693cc59619053da7a6606ee8ab812664ee033f5efca88da92077c96066fa37b"

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
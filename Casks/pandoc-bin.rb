cask "pandoc-bin" do
  version "3.1.13"
  sha256 "324995643ab4273be9b52e1bfd88f4909d9238f3dafd49cb1681a8ca374336bd"

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
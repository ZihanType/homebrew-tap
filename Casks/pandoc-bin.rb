cask "pandoc-bin" do
  version "3.1.12.1"
  sha256 "d23cf1d8e6f91c3389f7cd0b95c0d94f699ffcfc2f12355e60b163a096bf4e0e"

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
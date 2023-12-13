cask "pandoc-bin" do
  version "3.1.10"
  sha256 "6cae06dd2ec69ce6211dc05f53b3356f25179e56f1cdb01efbe7c2ebd2f1cc01"

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
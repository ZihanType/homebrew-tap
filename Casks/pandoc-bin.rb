cask "pandoc-bin" do
  version "3.1.12.3"
  sha256 "108c7adc9ffdbfa976eae4f78d33feb9a9b3f1fbb75045306e9ce50f493c6252"

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
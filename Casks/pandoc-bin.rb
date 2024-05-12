cask "pandoc-bin" do
  version "3.2"
  sha256 "0e11ca032fa452d69f8a06a0a4a1c26031ffd95d6f231a780b78bdbc8dd3488a"

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
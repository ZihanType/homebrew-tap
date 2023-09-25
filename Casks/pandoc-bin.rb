cask "pandoc-bin" do
  version "3.1.8"
  sha256 "72754635cf349596e90b6b4c227e363ef46a316a2e86c9d424bf523573259004"

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
cask "pandoc-bin" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2"
  sha256 :no_check

  url "https://github.com/jgm/pandoc/releases/download/#{version}/pandoc-#{version}-#{arch}-macOS.zip"
  name "pandoc-bin"
  desc "Swiss-army knife of markup format conversion"
  homepage "https://pandoc.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "pandoc-#{version}-#{arch}/bin/pandoc"
end
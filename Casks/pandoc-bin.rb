cask "pandoc-bin" do
  version "3.1.11.1"
  sha256 "0018eddd489389ac4e6cf6f4711c1ad49574361c04282e075400fad2c0050084"

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
cask "erdtree-bin" do
  version "1.4.1"
  sha256 "7021d87f5d7b3a481abdf7f753c5eb7b6ece41840f8d3c49a291e122c9417c3c"

  url "https://github.com/solidiquis/erdtree/releases/download/v#{version}/et-v#{version}-x86_64-apple-darwin.tar.gz"
  name "erdtree-bin"
  desc "Multi-threaded file-tree visualizer and disk usage analyzer"
  homepage "https://github.com/solidiquis/erdtree"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "et"
end
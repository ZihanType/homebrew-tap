cask "erdtree-bin" do
  version "1.8.1"
  sha256 "40f6fd7a84670e3605960811b12d2e3cd366aa1fb28b8bacda0d5b977a8fce96"

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
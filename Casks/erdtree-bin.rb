cask "erdtree-bin" do
  version "1.3.0"
  sha256 "3bb6d949c9869a5f94f60d8e5b2bc85dbd09c002079e6da823bc0bf9ec318221"

  url "https://github.com/solidiquis/erdtree/releases/download/v#{version}/et-v#{version}-x86_64-apple-darwin.tar.gz"
  name "erdtree-bin"
  desc "Multi-threaded file-tree visualizer and disk usage analyzer"
  homepage "https://github.com/solidiquis/erdtree"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "GNUSparseFile.0/et"
end
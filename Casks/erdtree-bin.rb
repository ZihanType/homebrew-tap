cask "erdtree-bin" do
  version "3.0.1"
  sha256 "027bce209b7010215a7d3f4832f7eeb13ea97a55eca6d6ef318db55b59ef1a49"

  url "https://github.com/solidiquis/erdtree/releases/download/v#{version}/erd-v#{version}-x86_64-apple-darwin.tar.gz"
  name "erdtree-bin"
  desc "Multi-threaded file-tree visualizer and disk usage analyzer"
  homepage "https://github.com/solidiquis/erdtree"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "erd"
end
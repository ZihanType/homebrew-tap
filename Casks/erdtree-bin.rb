cask "erdtree-bin" do
  version "3.1.2"
  sha256 "ba817e64b09e2f2505c8ce71df941aa5d73046d5bebdff83b656541cdbead688"

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
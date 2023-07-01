cask "erdtree-bin" do
  version "3.1"
  sha256 "bf0b25104b9e35465b878589b372b6d91fd34f1648b504958cd32ec92204b3f5"

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
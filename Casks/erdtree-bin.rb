cask "erdtree-bin" do
  version "3.0.0"
  sha256 "a39e67d8d1f40f0e7631f3fa208c2c374348d81c04388463137b749378b29758"

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
cask "erdtree-bin" do
  version "2.0.0"
  sha256 "195a27568a1c903d1824aa6285fd4f10df73f3593a3766c51a79a1da0c48e996"

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
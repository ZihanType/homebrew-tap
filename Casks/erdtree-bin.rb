cask "erdtree-bin" do
  version "3.0.2"
  sha256 "d0b3ee6743f0532c35cbd7eba724e74586ac31f10a6c56446454861e49d8d016"

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
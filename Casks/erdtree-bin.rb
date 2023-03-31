cask "erdtree-bin" do
  version "1.7.1"
  sha256 "580a58a40f491b00ddc37128ffc40869d5cb15c3943424235a3d566b0c6da62a"

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
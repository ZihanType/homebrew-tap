cask "erdtree-bin" do
  version "1.5.2"
  sha256 "6156a4aabbbf6b1ae1cff647eefbdd6eff90df1af48df152a169088e8ad99434"

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
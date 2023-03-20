cask "erdtree-bin" do
  version "1.6.0"
  sha256 "b11eacbe731e160e9b72e5a12cd8c36dff1691c07890eee42e328d339bf70395"

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
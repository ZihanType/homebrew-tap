cask "erdtree-bin" do
  version "3.1.1"
  sha256 "70041c091000f1eee0eec4e8e58dff1649c8c62973a95d4b01acaea93937df80"

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
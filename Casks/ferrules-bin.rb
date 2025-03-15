cask "ferrules-bin" do
  version "0.1.7"
  sha256 :no_check

  url "https://github.com/AmineDiro/ferrules/releases/download/v#{version}/ferrules-aarch64-apple-darwin.tar.xz"
  name "ferrules-bin"
  desc "Modern, fast, document parser written in Rust"
  homepage "https://github.com/aminediro/ferrules"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "ferrules"
end
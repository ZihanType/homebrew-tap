cask "jq-bin" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.1"
  sha256 :no_check

  url "https://github.com/jqlang/jq/releases/download/jq-#{version}/jq-macos-#{arch}"
  name "jq-bin"
  desc "Lightweight and flexible command-line JSON processor"
  homepage "https://jqlang.github.io/jq/"

  livecheck do
    url :stable
    regex(/^(?:jq[._-])?v?(\d+(?:\.\d+)+)$/i)
  end

  binary "jq-macos-#{arch}", target: "jq"
end
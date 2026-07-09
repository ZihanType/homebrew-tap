cask "lark-cli-bin" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.68"
  sha256 :no_check

  url "https://github.com/larksuite/cli/releases/download/v#{version}/lark-cli-#{version}-darwin-#{arch}.tar.gz"
  name "lark-cli-bin"
  desc "The official Lark/Feishu CLI tool."
  homepage "https://github.com/larksuite/cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "lark-cli"
end
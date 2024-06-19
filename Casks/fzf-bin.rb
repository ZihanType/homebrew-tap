cask "fzf-bin" do
  arch arm: "arm64", intel: "amd64"

  version "0.53.0"

  url "https://github.com/junegunn/fzf/releases/download/#{version}/fzf-#{version}-darwin_#{arch}.zip"
  name "fzf-bin"
  desc "Command-line fuzzy finder written in Go"
  homepage "https://github.com/junegunn/fzf"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "fzf"
end
cask "fzf-bin" do
  arch arm: "arm64", intel: "amd64"

  version "0.61.3"
  sha256 :no_check

  url "https://github.com/junegunn/fzf/releases/download/v#{version}/fzf-#{version}-darwin_#{arch}.tar.gz"
  name "fzf-bin"
  desc "Command-line fuzzy finder written in Go"
  homepage "https://github.com/junegunn/fzf"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "fzf"
end
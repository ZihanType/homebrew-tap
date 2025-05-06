cask "asdf-bin" do
  arch arm: "arm64", intel: "amd64"

  version "0.16.7"
  sha256 :no_check

  url "https://github.com/asdf-vm/asdf/releases/download/v#{version}/asdf-v#{version}-darwin-#{arch}.tar.gz"
  name "asdf-bin"
  desc "Extendable version manager with support for Ruby, Node.js, Erlang & more"
  homepage "https://github.com/asdf-vm/asdf"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "asdf"
end
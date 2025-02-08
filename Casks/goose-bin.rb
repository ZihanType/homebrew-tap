cask "goose-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.5"
  sha256 :no_check

  url "https://github.com/block/goose/releases/download/v#{version}/goose-#{arch}-apple-darwin.tar.bz2"
  name "goose-bin"
  desc "an open-source, extensible AI agent that goes beyond code suggestions - install, execute, edit, and test with any LLM"
  homepage "https://github.com/block/goose"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "goose"
end
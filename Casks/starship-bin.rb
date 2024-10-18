cask "starship-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.21.0"
  sha256 :no_check

  url "https://github.com/starship/starship/releases/download/v#{version}/starship-#{arch}-apple-darwin.tar.gz"
  name "starship-bin"
  desc "Cross-shell prompt for astronauts"
  homepage "https://github.com/starship/starship"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "starship"
end
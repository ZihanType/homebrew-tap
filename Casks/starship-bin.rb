cask "starship-bin" do
  version "1.10.1"
  sha256 "c4edf25a41f621de73e3d9e27a1b1c6ddc888361d99af65701078681ca5536ef"

  url "https://github.com/starship/starship/releases/download/v#{version}/starship-x86_64-apple-darwin.tar.gz"
  name "starship-bin"
  desc "Cross-shell prompt for astronauts"
  homepage "https://github.com/starship/starship"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "starship"
end
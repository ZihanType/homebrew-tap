cask "starship-bin" do
  version "1.7.1"
  sha256 "514e9e1a64fc2b478523af9c9942a484480f31ca7d43a1bf98c2de579a7d6261"

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
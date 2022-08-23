cask "starship-bin" do
  version "1.10.2"
  sha256 "60febe06570cffd2cbd21c9ad98225e3bfa87e05b35cd4daa68a7a2c466f84f4"

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
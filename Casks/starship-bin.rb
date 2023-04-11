cask "starship-bin" do
  version "1.14.1"
  sha256 "b4bc6766afc2db96786ee322cf9dee4ad6383167609f747197051cb8258838be"

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
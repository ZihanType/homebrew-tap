cask "starship-bin" do
  version "1.10.3"
  sha256 "bf959619efc07ab76e02b635bbf30a35b3b2fd994020e4ff5d360bbf3371578e"

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
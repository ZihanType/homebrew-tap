cask "starship-bin" do
  version "1.6.3"
  sha256 "e1fa73c50852949c1ad304c9125f9097ac5de4dcf249bd90fcdcf016494f6f12"

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
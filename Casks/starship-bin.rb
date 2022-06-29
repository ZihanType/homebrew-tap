cask "starship-bin" do
  version "1.9.1"
  sha256 "a5001c526596cde4504a14d6a9e7ca775c6a074893a40ee3b2cb9125b2726071"

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
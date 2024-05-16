cask "starship-bin" do
  version "1.19.0"
  sha256 "e29cc00ec9339a8ff85f9903a621311d9d1b6bdac196021594f96e6ab7902b69"

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
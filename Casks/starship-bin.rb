cask "starship-bin" do
  version "1.11.0"
  sha256 "55138c8c40ea1fceb0360dc8d184e9d370183c121cd1fe2272507a3d12be51f6"

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
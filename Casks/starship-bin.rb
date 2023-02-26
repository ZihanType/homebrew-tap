cask "starship-bin" do
  version "1.13.1"
  sha256 "75cd53740b894e3f709443fb34731f19f5046787ba07a6546776c75ab89f71de"

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
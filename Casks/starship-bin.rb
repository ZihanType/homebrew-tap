cask "starship-bin" do
  version "1.18.2"
  sha256 "f8ef4dae2b1cee520247550a7240e4bc042fa52432a245805338abcbc1c5cd29"

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
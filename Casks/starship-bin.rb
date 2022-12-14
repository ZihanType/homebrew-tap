cask "starship-bin" do
  version "1.12.0"
  sha256 "b4cbe4e8a72f6eb2c4f132d306b00b6d742314bb4cc4e9e43cd1a9cc8357ac53"

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
cask "starship-bin" do
  version "1.8.0"
  sha256 "2b18b993766672cf046b05597ae81ac4876cbe457d35f958f0cd85176a53aa9f"

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
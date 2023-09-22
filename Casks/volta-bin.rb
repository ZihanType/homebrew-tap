cask "volta-bin" do
  version "1.1.1"
  sha256 "778ccaa943de8729d91e9df02a2767b470d97e8d5551faf6d89978db6f5f3c64"

  url "https://github.com/volta-cli/volta/releases/download/v#{version}/volta-#{version}-macos.tar.gz"
  name "volta-bin"
  desc "JavaScript toolchain manager for reproducible environments"
  homepage "https://volta.sh"

  livecheck do
    url :stable
    strategy :github_latest
  end

  binary "volta"
  binary "volta-migrate"
  binary "volta-shim"
end
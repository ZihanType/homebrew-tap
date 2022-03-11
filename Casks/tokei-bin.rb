cask "tokei-bin" do
  version "12.1.2"
  sha256 "2af8abb6a08b0513f9d16ca2c7cd37949b858d2a3e3227be8cc412b3b4937d5b"

  url "https://github.com/XAMPPRocky/tokei/releases/download/v#{version}/tokei-x86_64-apple-darwin.tar.gz"
  name "tokei-bin"
  desc "Count your code, quickly."
  homepage "https://github.com/XAMPPRocky/tokei"

  livecheck do
    url :stable
    strategy :github_latest
  end

  binary "tokei"
end
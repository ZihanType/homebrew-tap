cask "tokei-bin" do
  version "12.1.2"
  sha256 :no_check

  url "https://github.com/XAMPPRocky/tokei/releases/download/v#{version}/tokei-x86_64-apple-darwin.tar.gz"
  name "tokei-bin"
  desc "Program that allows you to count code, quickly"
  homepage "https://github.com/XAMPPRocky/tokei"

  livecheck do
    url "https://crates.io/api/v1/crates/tokei"
    regex(%r{.*"max_stable_version":"(.+?)"}i)
  end

  binary "tokei"
end
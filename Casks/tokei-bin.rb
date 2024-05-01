cask "tokei-bin" do
  version "13.0.0-alpha.0"
  sha256 "44765d78b981ea88bbfc990af006068e13d19451bed097db1356235a26f93827"

  url "https://github.com/XAMPPRocky/tokei/releases/download/v#{version}/tokei-x86_64-apple-darwin.tar.gz"
  name "tokei-bin"
  desc "Count your code, quickly."
  homepage "https://github.com/XAMPPRocky/tokei"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "tokei"
end
cask "fish-bin" do
  version "3.7.1"
  sha256 "8e45b03fe9fde0e928310a65dcce422ca6d3df12b8417a36de6919cd0fea392f"

  url "https://github.com/fish-shell/fish-shell/releases/download/#{version}/fish-#{version}.app.zip"
  name "fish-bin"
  desc "User-friendly command-line shell for UNIX-like operating systems"
  homepage "https://fishshell.com"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "fish.app"
end
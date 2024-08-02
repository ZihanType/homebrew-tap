cask "fish-bin" do
  version "3.7.1"
  sha256 :no_check

  url "https://github.com/fish-shell/fish-shell/releases/download/#{version}/fish-#{version}.app.zip"
  name "fish-bin"
  desc "User-friendly command-line shell for UNIX-like operating systems"
  homepage "https://fishshell.com"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with formula: "fish"

  app "fish.app"
  binary "#{appdir}/fish.app/Contents/Resources/base/usr/local/bin/fish",
         target: "/usr/local/bin/fish"
end
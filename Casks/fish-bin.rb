cask "fish-bin" do
  version "4.0b1"
  sha256 :no_check

  url "https://github.com/fish-shell/fish-shell/releases/download/#{version}/fish-#{version}.app.zip"
  name "fish-bin"
  desc "User-friendly command-line shell for UNIX-like operating systems"
  homepage "https://fishshell.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with formula: "fish"

  app "fish.app"
  binary "#{appdir}/fish.app/Contents/Resources/base/usr/local/bin/fish",
         target: "/usr/local/bin/fish"
  binary "#{appdir}/fish.app/Contents/Resources/base/usr/local/bin/fish_indent",
         target: "/usr/local/bin/fish_indent"
  binary "#{appdir}/fish.app/Contents/Resources/base/usr/local/bin/fish_key_reader",
         target: "/usr/local/bin/fish_key_reader"
end
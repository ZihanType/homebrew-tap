cask "rye-bin" do
  version "0.28.0"
  sha256 "4220b75b2823df21e80507233a7e4320c53044a8518ce26018a2da0e037b1703"

  url "https://github.com/astral-sh/rye/releases/download/#{version}/rye-x86_64-macos.gz"
  name "rye-bin"
  desc "a Hassle-Free Python Experience"
  homepage "https://github.com/astral-sh/rye"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "rye-x86_64-macos", target: "rye"

  def caveats
    <<~EOS
      Add the `shims` folder into your PATH:
        set -Ua fish_user_paths "$HOME/.rye/shims"
      To generate completion script, run:
        rye self completion -s fish > ~/.config/fish/completions/rye.fish
    EOS
  end
end
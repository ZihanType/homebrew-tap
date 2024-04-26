cask "rye-bin" do
  version "0.33.0"
  sha256 "e4d5529c65fa4f5f408dde0d2391c75726a69c48a252c25e8673ac407080e51a"

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
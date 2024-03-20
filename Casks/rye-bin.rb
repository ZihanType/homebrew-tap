cask "rye-bin" do
  version "0.30.0"
  sha256 "03669ddb0f482c614b27b0ba555cff4bc44617a39acbea21cd8d5e6b1a025aee"

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
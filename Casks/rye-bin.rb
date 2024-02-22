cask "rye-bin" do
  version "0.25.0"
  sha256 "9861dd0c7d0c187b959d1afcda4826502a4c0bba7a42523fc78114c9125102ba"

  url "https://github.com/mitsuhiko/rye/releases/download/#{version}/rye-x86_64-macos.gz"
  name "rye-bin"
  desc "An Experimental Package Management Solution for Python"
  homepage "https://github.com/mitsuhiko/rye"

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
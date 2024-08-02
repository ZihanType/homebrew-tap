cask "rye-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.35.0"
  sha256 :no_check

  url "https://github.com/astral-sh/rye/releases/download/#{version}/rye-#{arch}-macos.gz"
  name "rye-bin"
  desc "Experimental Package Management Solution for Python"
  homepage "https://github.com/astral-sh/rye"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "rye-#{arch}-macos", target: "rye"

  def caveats
    <<~EOS
      Add the `shims` folder into your PATH:
        set -gx PATH $PATH $HOME/.rye/shims
      To generate completion script, run:
        rye self completion -s fish > ~/.config/fish/completions/rye.fish
    EOS
  end
end
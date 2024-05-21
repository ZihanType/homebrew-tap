cask "rye-bin" do
  version "0.34.0"
  sha256 "929831045085dad753e2a58e0ae3e052b1a62e431ffee8ea00c6f525c7b3ee6c"

  url "https://github.com/astral-sh/rye/releases/download/#{version}/rye-x86_64-macos.gz"
  name "rye-bin"
  desc "Experimental Package Management Solution for Python"
  homepage "https://github.com/astral-sh/rye"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "rye-x86_64-macos", target: "rye"

  def caveats
    <<~EOS
      Add the `shims` folder into your PATH:
        set -gx PATH $PATH $HOME/.rye/shims
      To generate completion script, run:
        rye self completion -s fish > ~/.config/fish/completions/rye.fish
    EOS
  end
end
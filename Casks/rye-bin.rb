cask "rye-bin" do
  version "0.29.0"
  sha256 "f538d63afc930a5c636a54ae7d644d9793ffcee05a1875aed73b9a7fc621f26b"

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
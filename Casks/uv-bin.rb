cask "uv-bin" do
  arch arm: "aarch64", intel: "x86_64"
  sha256 :no_check

  version "0.3.5"

  url "https://github.com/astral-sh/uv/releases/download/#{version}/uv-#{arch}-apple-darwin.tar.gz"
  name "uv-bin"
  desc "Extremely fast Python package installer and resolver, written in Rust"
  homepage "https://github.com/astral-sh/uv"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "uv-#{arch}-apple-darwin/uv"
  binary "uv-#{arch}-apple-darwin/uvx"

  def caveats
    <<~EOS
      To enable shell autocompletion for uv commands, run one of the following:
        echo 'eval "$(uv generate-shell-completion bash)"' >> ~/.bashrc
        echo 'eval "$(uv generate-shell-completion zsh)"' >> ~/.zshrc
        echo 'uv generate-shell-completion fish | source' >> ~/.config/fish/config.fish
        echo 'eval (uv generate-shell-completion elvish | slurp)' >> ~/.elvish/rc.elv
    EOS
  end
end
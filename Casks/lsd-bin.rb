cask "lsd-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.2"

  url "https://github.com/lsd-rs/lsd/releases/download/v#{version}/lsd-v#{version}-#{arch}-apple-darwin.tar.gz"
  name "lsd-bin"
  desc "The next gen ls command"
  homepage "https://github.com/lsd-rs/lsd"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "lsd-v#{version}-#{arch}-apple-darwin/lsd"
  binary "lsd-v#{version}-#{arch}-apple-darwin/autocomplete/lsd.bash-completion",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/lsd"
  binary "lsd-v#{version}-#{arch}-apple-darwin/autocomplete/_lsd",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_lsd"
  binary "lsd-v#{version}-#{arch}-apple-darwin/autocomplete/lsd.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/lsd.fish"
end
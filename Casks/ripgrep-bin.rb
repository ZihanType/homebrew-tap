cask "ripgrep-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "14.1.0"

  url "https://github.com/BurntSushi/ripgrep/releases/download/#{version}/ripgrep-#{version}-#{arch}-apple-darwin.tar.gz"
  name "ripgrep-bin"
  desc "Search tool like grep and The Silver Searcher"
  homepage "https://github.com/BurntSushi/ripgrep"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "ripgrep-#{version}-#{arch}-apple-darwin/rg"
  binary "ripgrep-#{version}-#{arch}-apple-darwin/complete/rg.bash",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/rg"
  binary "ripgrep-#{version}-#{arch}-apple-darwin/complete/_rg",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_rg"
  binary "ripgrep-#{version}-#{arch}-apple-darwin/complete/rg.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/rg.fish"

  uninstall delete: [
    "#{HOMEBREW_PREFIX}/etc/bash_completion.d/rg",
    "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_rg",
    "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/rg.fish",
  ]
end
cask "ripgrep-bin" do
  version "14.0.3"
  sha256 "dd06bebd3a9d75981f8e3271b6c69286990f3fc1a374f0e5b0fc2866ec69bc4c"

  url "https://github.com/BurntSushi/ripgrep/releases/download/#{version}/ripgrep-#{version}-x86_64-apple-darwin.tar.gz"
  name "ripgrep-bin"
  desc "Search tool like grep and The Silver Searcher"
  homepage "https://github.com/BurntSushi/ripgrep"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "ripgrep-#{version}-x86_64-apple-darwin/rg"
  binary "ripgrep-#{version}-x86_64-apple-darwin/complete/rg.bash",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/rg"
  binary "ripgrep-#{version}-x86_64-apple-darwin/complete/_rg",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_rg"
  binary "ripgrep-#{version}-x86_64-apple-darwin/complete/rg.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/rg.fish"

  uninstall delete: [
    "#{HOMEBREW_PREFIX}/etc/bash_completion.d/rg",
    "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_rg",
    "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/rg.fish",
  ]
end
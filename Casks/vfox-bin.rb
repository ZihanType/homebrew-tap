cask "vfox-bin" do
  version "0.5.2"
  sha256 "abe6e18a2e7b7699bfdd3ce667d5d2c630a49480c9d96dd26f61df3716c75169"

  url "https://github.com/version-fox/vfox/releases/download/v#{version}/vfox_#{version}_macos_x86_64.tar.gz"
  name "vfox-bin"
  desc "Version manager with support for Java, Node.js, Flutter, .NET & more"
  homepage "https://vfox.lhan.me"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "vfox_#{version}_macos_x86_64/vfox"
  binary "vfox_#{version}_macos_x86_64/completions/bash_autocomplete",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/vfox"
  binary "vfox_#{version}_macos_x86_64/completions/zsh_autocomplete",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_vfox"

  uninstall delete: [
    "#{HOMEBREW_PREFIX}/etc/bash_completion.d/vfox",
    "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_vfox",
  ]
end
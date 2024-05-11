cask "vfox-bin" do
  version "0.5.0"
  sha256 "aa722ec6fcb1081a908cfc567fac264cc7476fe99a7dc45adefb2366d6eeeab2"

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
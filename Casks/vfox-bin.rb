cask "vfox-bin" do
  version "0.4.2"
  sha256 "0b516a195b7247abfaa1e1ec51ee8f5763a90168f04f9103d70fe655405f8172"

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
cask "vfox-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.5.5"
  sha256 :no_check

  url "https://github.com/version-fox/vfox/releases/download/v#{version}/vfox_#{version}_macos_#{arch}.tar.gz"
  name "vfox-bin"
  desc "Version manager with support for Java, Node.js, Flutter, .NET & more"
  homepage "https://github.com/version-fox/vfox"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "vfox_#{version}_macos_#{arch}/vfox"
  binary "vfox_#{version}_macos_#{arch}/completions/bash_autocomplete",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/vfox"
  binary "vfox_#{version}_macos_#{arch}/completions/zsh_autocomplete",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_vfox"
end
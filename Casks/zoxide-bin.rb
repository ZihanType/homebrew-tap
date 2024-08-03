cask "zoxide-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.9.4"
  sha256 :no_check

  url "https://github.com/ajeetdsouza/zoxide/releases/download/v#{version}/zoxide-#{version}-#{arch}-apple-darwin.tar.gz"
  name "zoxide-bin"
  desc "Shell extension to navigate your filesystem faster"
  homepage "https://github.com/ajeetdsouza/zoxide"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "zoxide"

  binary "completions/zoxide.bash",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/zoxide"
  binary "completions/_zoxide",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_zoxide"
  binary "completions/zoxide.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/zoxide.fish"

  manpage "man/man1/zoxide-add.1"
  manpage "man/man1/zoxide-import.1"
  manpage "man/man1/zoxide-init.1"
  manpage "man/man1/zoxide-query.1"
  manpage "man/man1/zoxide-remove.1"
  manpage "man/man1/zoxide.1"
end
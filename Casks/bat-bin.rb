cask "bat-bin" do
  version "0.22.1"
  sha256 "c7da22f4738eba19c4143d4465a3028eb7d3d54208508badc74f648099e7479f"

  url "https://github.com/sharkdp/bat/releases/download/v#{version}/bat-v#{version}-x86_64-apple-darwin.tar.gz"
  name "bat-bin"
  desc "A cat(1) clone with wings."
  homepage "https://github.com/sharkdp/bat"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "bat-v#{version}-x86_64-apple-darwin/bat"
  binary "bat-v#{version}-x86_64-apple-darwin/autocomplete/bat.bash",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/bat"
  binary "bat-v#{version}-x86_64-apple-darwin/autocomplete/bat.zsh",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_bat"
  binary "bat-v#{version}-x86_64-apple-darwin/autocomplete/bat.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/bat.fish"

  uninstall delete: [
    "#{HOMEBREW_PREFIX}/etc/bash_completion.d/bat",
    "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_bat",
    "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/bat.fish",
  ]
end
cask "lsd-bin" do
  version "1.1.2"
  sha256 "df5cc97fe1c63d3de4e7fda7594743fd961f75024062b1a0c58ca296b8337eb8"

  url "https://github.com/lsd-rs/lsd/releases/download/v#{version}/lsd-v#{version}-x86_64-apple-darwin.tar.gz"
  name "lsd-bin"
  desc "The next gen ls command"
  homepage "https://github.com/lsd-rs/lsd"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "lsd-v#{version}-x86_64-apple-darwin/lsd"
  binary "lsd-v#{version}-x86_64-apple-darwin/autocomplete/lsd.bash-completion",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/lsd"
  binary "lsd-v#{version}-x86_64-apple-darwin/autocomplete/_lsd",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_lsd"
  binary "lsd-v#{version}-x86_64-apple-darwin/autocomplete/lsd.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/lsd.fish"

  uninstall delete: [
    "#{HOMEBREW_PREFIX}/etc/bash_completion.d/lsd",
    "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_lsd",
    "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/lsd.fish",
  ]
end
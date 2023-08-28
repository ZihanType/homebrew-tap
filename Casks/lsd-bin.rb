cask "lsd-bin" do
  version "1.0.0"
  sha256 "ffff5b77bd53b5d90097da38c9bbbfba7020bc217bd027c788a065df5e89a92f"

  url "https://github.com/lsd-rs/lsd/releases/download/v#{version}/lsd-v#{version}-x86_64-apple-darwin.tar.gz"
  name "lsd-bin"
  desc "The next gen ls command"
  homepage "https://github.com/lsd-rs/lsd"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "lsd-#{version}-x86_64-apple-darwin/lsd"
  binary "lsd-#{version}-x86_64-apple-darwin/autocomplete/lsd.bash-completion",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/lsd"
  binary "lsd-#{version}-x86_64-apple-darwin/autocomplete/_lsd",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_lsd"
  binary "lsd-#{version}-x86_64-apple-darwin/autocomplete/lsd.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/lsd.fish"

  uninstall delete: [
    "#{HOMEBREW_PREFIX}/etc/bash_completion.d/lsd",
    "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_lsd",
    "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/lsd.fish",
  ]
end
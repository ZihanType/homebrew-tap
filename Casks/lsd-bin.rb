cask "lsd-bin" do
  version "0.21.0"
  sha256 "a0bbce1485e88e9afa688481ffb74fc8efcbc95111790c4e581d3bc747c4010b"

  url "https://github.com/Peltoche/lsd/releases/download/#{version}/lsd-#{version}-x86_64-apple-darwin.tar.gz"
  name "lsd-bin"
  desc "The next gen ls command"
  homepage "https://github.com/Peltoche/lsd"

  livecheck do
    url :stable
    strategy :github_latest
  end

  binary "lsd-#{version}-x86_64-apple-darwin/lsd"
  binary "lsd-#{version}-x86_64-apple-darwin/autocomplete/lsd.bash-completion",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/lsd"
  binary "lsd-#{version}-x86_64-apple-darwin/autocomplete/_lsd",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_lsd"
  binary "lsd-#{version}-x86_64-apple-darwin/autocomplete/lsd.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/lsd.fish"
end
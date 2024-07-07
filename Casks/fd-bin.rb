cask "fd-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "10.1.0"

  url "https://github.com/sharkdp/fd/releases/download/v#{version}/fd-v#{version}-#{arch}-apple-darwin.tar.gz"
  name "fd-bin"
  desc "Simple, fast and user-friendly alternative to find"
  homepage "https://github.com/sharkdp/fd"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "fd-v#{version}-#{arch}-apple-darwin/fd"
  binary "fd-v#{version}-#{arch}-apple-darwin/autocomplete/fd.bash",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/fd"
  binary "fd-v#{version}-#{arch}-apple-darwin/autocomplete/_fd",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_fd"
  binary "fd-v#{version}-#{arch}-apple-darwin/autocomplete/fd.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/fd.fish"
end
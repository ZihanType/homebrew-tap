cask "fd-bin" do
  version "10.1.0"
  sha256 "316cdaf5c6ec7e8b0664914df1da21c511aef2a023e13f8628354e60e0346dac"

  url "https://github.com/sharkdp/fd/releases/download/v#{version}/fd-v#{version}-x86_64-apple-darwin.tar.gz"
  name "fd-bin"
  desc "Simple, fast and user-friendly alternative to find"
  homepage "https://github.com/sharkdp/fd"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "fd-v#{version}-x86_64-apple-darwin/fd"
  binary "fd-v#{version}-x86_64-apple-darwin/autocomplete/fd.bash",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/fd"
  binary "fd-v#{version}-x86_64-apple-darwin/autocomplete/_fd",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_fd"
  binary "fd-v#{version}-x86_64-apple-darwin/autocomplete/fd.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/fd.fish"

  uninstall delete: [
    "#{HOMEBREW_PREFIX}/etc/bash_completion.d/fd",
    "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_fd",
    "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/fd.fish",
  ]
end
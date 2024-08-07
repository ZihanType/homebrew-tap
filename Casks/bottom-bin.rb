cask "bottom-bin" do
  version "0.9.6"
  sha256 :no_check

  url "https://github.com/ClementTsang/bottom/releases/download/#{version}/bottom_x86_64-apple-darwin.tar.gz"
  name "bottom-bin"
  desc "Yet another cross-platform graphical process/system monitor."
  homepage "https://github.com/ClementTsang/bottom/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "btm"
  binary "completion/btm.bash",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/btm"
  binary "completion/_btm",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_btm"
  binary "completion/btm.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/btm.fish"
end
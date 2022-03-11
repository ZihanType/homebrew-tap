cask "lsd-bin" do
  version "0.21.0"
  sha256 "a0bbce1485e88e9afa688481ffb74fc8efcbc95111790c4e581d3bc747c4010b"

  url "https://github.com/Peltoche/lsd/releases/download/#{version}/lsd-#{version}-x86_64-apple-darwin.tar.gz"
  name "lsd-bin"
  desc "The next gen ls command"
  homepage "https://github.com/Peltoche/lsd"

  binary "lsd-0.21.0-x86_64-apple-darwin/lsd"
end
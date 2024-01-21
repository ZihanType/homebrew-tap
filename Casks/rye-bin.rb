cask "rye-bin" do
  version "0.18.0"
  sha256 "69c55e68cd60b5ff7fbcedb57c555fd2fb506201a97e77a97aeadc6409e21bee"

  url "https://github.com/mitsuhiko/rye/releases/download/#{version}/rye-x86_64-macos.gz"
  name "rye-bin"
  desc "An Experimental Package Management Solution for Python"
  homepage "https://github.com/mitsuhiko/rye"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "rye-x86_64-macos", target: "rye"
end
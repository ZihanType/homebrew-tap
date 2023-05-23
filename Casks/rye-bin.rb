cask "rye-bin" do
  version "0.1.2"
  sha256 "9a6e2400c82392c02869801cc6892c9a4df0882787acb0956e8c23da94bc3efa"

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
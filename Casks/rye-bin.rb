cask "rye-bin" do
  version "0.15.2"
  sha256 "f3284498077c10c367c35ab2ea0c19f6e9f75d97a51eff633b9479203f0791be"

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
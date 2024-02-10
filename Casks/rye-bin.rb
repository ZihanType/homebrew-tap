cask "rye-bin" do
  version "0.22.0"
  sha256 "57b5c5a910b4977b8ae2ffa03dc18500d930b2ecb950aff507e4b7b18e60d744"

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
cask "rye-bin" do
  version "0.16.0"
  sha256 "60785f384d33135f6193b3255bf69ee2fbf2a25f7a65760e5ab74c77047745bb"

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
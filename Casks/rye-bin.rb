cask "rye-bin" do
  version "0.21.0"
  sha256 "556cd7b2beccc1410cb4d28b0e6779266e3b40477f1a1ea798c64b46366ae54d"

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
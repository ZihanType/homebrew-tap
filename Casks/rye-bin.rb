cask "rye-bin" do
  version "0.6.0"
  sha256 "39aa5678412e57808234a6863dc7bf4d6b9d4c9b3f714d410bd44e12d551beca"

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
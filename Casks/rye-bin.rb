cask "rye-bin" do
  version "0.5.0"
  sha256 "9ae455c424424cbf2d7f54ffdfdfa70597d4b175d66263456a5fbb696b6c99cc"

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
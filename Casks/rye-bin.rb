cask "rye-bin" do
  version "0.13.0"
  sha256 "921335016f8e74cad9918d67ec4f721c360bfff9ccb76c77959e1b295f4c9c8b"

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
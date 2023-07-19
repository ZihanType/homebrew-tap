cask "rye-bin" do
  version "0.11.0"
  sha256 "0e0f76b43b02c04f2159df75a4e0e39e6642d50efed4a4f0d6d7d3ca42d8eb34"

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
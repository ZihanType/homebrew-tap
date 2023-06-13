cask "rye-bin" do
  version "0.7.0"
  sha256 "9b276050420ec525f97707980f6710dd6799cf9a4db5b15dba72028099cf3d96"

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
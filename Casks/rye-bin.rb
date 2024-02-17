cask "rye-bin" do
  version "0.24.0"
  sha256 "76b8521333f0deccdcf31d42916c6ac90eb6b5e7214da582ab832ad1d32803ee"

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
cask "rye-bin" do
  version "0.23.0"
  sha256 "b84c4dab08d3e192fa147c73f2a02135c1a0823c55f004b57d926e31036eadbf"

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
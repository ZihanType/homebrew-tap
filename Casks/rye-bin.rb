cask "rye-bin" do
  version "0.1.0"
  sha256 "54fca65e5684163ddbcc471ee63c08f712409b38c54beac13d5c7fbcf757b0a0"

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
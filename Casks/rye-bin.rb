cask "rye-bin" do
  version "0.1.1"
  sha256 "4bbfe4417c45dd2d5f76145a8757fcdf01e02dc9d38a8abb0695570ba6b9a558"

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
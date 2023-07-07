cask "rye-bin" do
  version "0.10.0"
  sha256 "fcd5c343ef930846a07364f5e475f2a780151829ee043830b6648d86e578dbd1"

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
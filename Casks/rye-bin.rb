cask "rye-bin" do
  version "0.8.0"
  sha256 "fcf7793b9948e9f3999777824011681b62640a308ed5437e6f84c7f0dbf04d1a"

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
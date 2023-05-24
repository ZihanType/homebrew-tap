cask "rye-bin" do
  version "0.2.0"
  sha256 "8a5568ce42a657e4bf8aec15f4741196f724c59119ac5fe119652bbf02a44a05"

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
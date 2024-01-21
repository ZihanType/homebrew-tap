cask "rye-bin" do
  version "0.19.0"
  sha256 "02b6a1b0dac8bfc9eb63b2b0667a2856eb99d7fecead599d63db1276fd51fe7b"

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
cask "rye-bin" do
  version "0.3.0"
  sha256 "78132200827516c04905d0b05099e1addcaa4014881fd27b0ec314e252d9cc94"

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
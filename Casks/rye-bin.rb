cask "rye-bin" do
  version "0.17.0"
  sha256 "f25c47662d3c6dd606a35fee631a3755e71939048755782ea584e2fe1eda59b9"

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
cask "rye-bin" do
  version "0.9.0"
  sha256 "cbba59a1b38fd31478c8e2069c6ebd886166f6737eeb952684406a565453489d"

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
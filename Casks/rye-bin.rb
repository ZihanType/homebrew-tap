cask "rye-bin" do
  version "0.12.0"
  sha256 "2b36b6d17218983a4c6f53c09ae45f1088525d289c8b5b6703b9081f771ad653"

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
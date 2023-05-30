cask "rye-bin" do
  version "0.4.0"
  sha256 "be202a5cb8803eb36ab11e826d4515583fdbd25edd6276680e44773125ae27af"

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
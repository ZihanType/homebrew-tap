cask "rye-bin" do
  version "0.20.0"
  sha256 "ef12e762b1a1a5c36bee985edd85677c89bb5bf42376370f7b3a53a647e3b4d2"

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
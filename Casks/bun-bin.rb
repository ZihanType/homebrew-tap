cask "bun-bin" do
  version "1.1.5"
  sha256 "8a8cfb32cceaa4449e5b9464f747f42232727ed2df94f94ed7fa4e53569e5156" # bun-darwin-x64.zip

  url "https://github.com/oven-sh/bun/releases/download/bun-v#{version}/bun-darwin-x64.zip"
  name "bun-bin"
  desc "Incredibly fast JavaScript runtime, bundler, transpiler and package manager - all in one."
  homepage "https://bun.sh/"

  livecheck do
    url "https://github.com/oven-sh/bun/releases/latest"
    regex(%r{href=.*?/tag/bun-v?(\d+(?:\.\d+)+)["' >]}i)
  end

  binary "bun-darwin-x64/bun"

  def caveats
    <<~EOS
      To generate completion script, run:
        bun completions
    EOS
  end
end
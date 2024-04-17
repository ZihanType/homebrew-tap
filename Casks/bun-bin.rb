cask "bun-bin" do
  version "1.1.4"
  sha256 "33a32860f3421813f42ae367bfc70e9e6e3b149cb123a317cec5fe16f1f10040" # bun-darwin-x64.zip

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
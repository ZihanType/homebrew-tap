cask "bun-bin" do
  version "1.0.33"
  sha256 "3b5ddd10d049f660642abb0b8c68010860c5bf3a798e417bfbb9bae59ed18fc4" # bun-darwin-x64.zip

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
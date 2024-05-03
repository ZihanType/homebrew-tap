cask "bun-bin" do
  version "1.1.7"
  sha256 "dca9f8534897d117cd63f8fdd7d423cd16ac9af17a0377a5926beb83d98c7bb0" # bun-darwin-x64.zip

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
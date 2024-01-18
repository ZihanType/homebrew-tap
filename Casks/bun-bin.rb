cask "bun-bin" do
  version "1.0.23"
  sha256 "3108de48a558b4ac1532af69d8d2d964f6b17442496330cb43ac6eb11f2a6463" # bun-darwin-x64.zip

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
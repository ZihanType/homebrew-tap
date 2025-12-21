cask "bun-bin" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.5"
  sha256 :no_check

  url "https://github.com/oven-sh/bun/releases/download/bun-v#{version}/bun-darwin-#{arch}.zip"
  name "bun-bin"
  desc "Incredibly fast JavaScript runtime, bundler, transpiler and package manager - all in one."
  homepage "https://bun.sh/"

  livecheck do
    url "https://github.com/oven-sh/bun/releases/latest"
    regex(%r{href=.*?/tag/bun-v?(\d+(?:\.\d+)+)["' >]}i)
  end

  binary "bun-darwin-#{arch}/bun"
  binary "bun-darwin-#{arch}/bun", target: "bunx"
  binary "bun-darwin-#{arch}/bun", target: "node"
end
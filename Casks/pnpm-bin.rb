cask "pnpm-bin" do
  version "7.13.0"
  sha256 "5197810f2f0bb2bc45853a61545a08f3d0783dffcc99b34c163d27f17dc0722f"

  url "https://github.com/pnpm/pnpm/releases/download/v#{version}/pnpm-macos-x64"
  name "pnpm-bin"
  desc "📦🚀 Fast, disk space efficient package manager"
  homepage "https://pnpm.io/"

  livecheck do
    url "https://registry.npmjs.org/pnpm/latest"
    regex(/["']version["']:\s*?["']([^"']+)["']/i)
  end

  binary "pnpm-macos-x64", target: "pnpm"

  def caveats
    <<~EOS
      To activate pnpm, add the following to your ~/.zshrc or ~/.bashrc:
        # pnpm
        export PNPM_HOME="pnpm global cli path"
        export PATH="$PNPM_HOME:$PATH"
        # pnpm end
    EOS
  end
end
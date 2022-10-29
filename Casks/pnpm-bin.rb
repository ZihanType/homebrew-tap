cask "pnpm-bin" do
  version "7.14.1"
  sha256 "65027c9680ad724d74567a24aeec1421a9e096897b10f3332969a604e3b718ac"

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
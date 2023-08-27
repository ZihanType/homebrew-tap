cask "pnpm-bin" do
  version "8.7.0"
  sha256 "cc2d42f1e823ee098587d13ff8ff307b90d924ae429b7a7c19626018acf69166"

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
        export PNPM_HOME="pnpm global binary path"
        export PATH="$PNPM_HOME:$PATH"
        # pnpm end
    EOS
  end
end
cask "pnpm-bin" do
  version "8.6.6"
  sha256 "a7cbd12cdd502f75f3e31478d64dabaf2f782cf0613b6bb6472e153df5b47dda"

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
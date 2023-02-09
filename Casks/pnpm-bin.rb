cask "pnpm-bin" do
  version "7.27.0"
  sha256 "203afc85b97afccd23d5cee8188fd7632a8058bc0280e0d921feca4337567be3"

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
cask "pnpm-bin" do
  version "7.18.2"
  sha256 "77a3cabeaf1cbb00a6181adbbc0f24829ee9e623335f2ce1814efc20624ccef2"

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
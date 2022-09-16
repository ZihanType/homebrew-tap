cask "pnpm-bin" do
  version "7.11.0"
  sha256 "0a38472bd27e3ae9e4bb2b4f8033a1d8b4d3c248978027c35ae3095a650e8fa4"

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
cask "pnpm-bin" do
  version "7.13.5"
  sha256 "8d673261ef300c93102b316bb438e1e8bcccb2467f6904711d6900b74efaa34b"

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
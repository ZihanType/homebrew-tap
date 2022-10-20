cask "pnpm-bin" do
  version "7.13.6"
  sha256 "4f67bb39c4dcaaf637e3fe910fa4d1098a39ca86478078ade3d7b5d460424cc0"

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
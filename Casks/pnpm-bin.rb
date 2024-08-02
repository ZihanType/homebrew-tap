cask "pnpm-bin" do
  arch arm: "arm64", intel: "x64"

  version "9.4.0"
  sha256 :no_check

  url "https://github.com/pnpm/pnpm/releases/download/v#{version}/pnpm-macos-#{arch}"
  name "pnpm-bin"
  desc "Fast, disk space efficient package manager"
  homepage "https://github.com/pnpm/pnpm"

  livecheck do
    url "https://registry.npmjs.org/pnpm/latest"
    regex(/["']version["']:\s*?["']([^"']+)["']/i)
  end

  binary "pnpm-macos-#{arch}", target: "pnpm"

  def caveats
    <<~EOS
      To activate pnpm, add the following to your ~/.zshrc or ~/.bashrc:
        # pnpm
        export PNPM_HOME="pnpm global binary path"
        export PATH="$PNPM_HOME:$PATH"
    EOS
  end
end
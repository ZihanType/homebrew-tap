cask "pnpm-bin" do
  version "6.32.3"
  sha256 "9a8e6b5b3dfa3c97e92bbfd8df847d25e696c7ba0fe4f3cc532ab48fd7519353"

  url "https://github.com/pnpm/pnpm/releases/download/v#{version}/pnpm-macos-x64"
  name "pnpm-bin"
  desc "Fast, disk space efficient package manager -- 快速的，节省磁盘空间的包管理工具"
  homepage "https://github.com/pnpm/pnpm"

  binary "pnpm-macos-x64"
end
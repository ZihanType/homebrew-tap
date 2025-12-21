cask "bun-bin" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.5"
  sha256 :no_check

  url "https://github.com/oven-sh/bun/releases/download/bun-v#{version}/bun-darwin-#{arch}.zip"
  name "bun-bin"
  desc "Incredibly fast JavaScript runtime, bundler, transpiler and package manager - all in one."
  homepage "https://bun.sh/"

  livecheck do
    url "https://github.com/oven-sh/bun/releases/latest"
    regex(%r{href=.*?/tag/bun-v?(\d+(?:\.\d+)+)["' >]}i)
  end

  binary "bun-darwin-#{arch}/bun"
  binary "bun-darwin-#{arch}/bun", target: "bunx"
  binary "bun-darwin-#{arch}/bun", target: "node"

  # 如果当前用户已经安装了 node，则报错并提示当前 cask 与 node 冲突
  preflight do
    if Utils.which("node")
      odie <<~EOS
        bun-bin cannot be installed because it conflicts with Node.js found in your PATH.

        Please uninstall Node.js before installing bun-bin.
      EOS
    end
  end

  # [install]
  # linker = "hoisted"

  # 将上面的内容写入到 $HOME/.bun/install/global/bunfig.toml 文件中
  postflight do
    bunfig_dir = File.join(Dir.home, ".bun", "install", "global")
    bunfig_path = File.join(bunfig_dir, "bunfig.toml")
    FileUtils.mkdir_p(bunfig_dir)
    File.open(bunfig_path, "w") do |file|
      file.puts('[install]')
      file.puts('linker = "hoisted"')
    end
  end
end
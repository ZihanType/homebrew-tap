cask "samply-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.13.1"
  sha256 :no_check

  url "https://github.com/mstange/samply/releases/download/samply-v#{version}/samply-#{arch}-apple-darwin.tar.xz"
  name "samply-bin"
  desc "Command-line sampling profiler for macOS and Linux"
  homepage "https://github.com/mstange/samply"

  livecheck do
    url "https://crates.io/api/v1/crates/samply"
    regex(%r{.*"max_stable_version":"(.+?)"}i)
  end

  binary "samply-#{arch}-apple-darwin/samply"
end
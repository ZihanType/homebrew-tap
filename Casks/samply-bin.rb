cask "samply-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.12.0"
  sha256 :no_check

  url "https://github.com/mstange/samply/releases/download/samply-v#{version}/samply-#{arch}-apple-darwin.tar.xz"
  name "samply-bin"
  desc "Command-line sampling profiler for macOS and Linux"
  homepage "https://github.com/mstange/samply"

  livecheck do
    url "https://crates.io/api/v1/crates/samply"
    regex(%r{.*"newest_version":"([.\d]+)"}i)
  end

  binary "samply-#{arch}-apple-darwin/samply"
end
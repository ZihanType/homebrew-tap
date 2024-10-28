cask "taplo-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.9.3"
  sha256 :no_check

  url "https://github.com/tamasfe/taplo/releases/download/#{version}/taplo-full-darwin-#{arch}.gz"
  name "taplo-bin"
  desc "TOML toolkit written in Rust"
  homepage "https://github.com/tamasfe/taplo"

  livecheck do
    url "https://crates.io/api/v1/crates/taplo-cli"
    regex(%r{.*"newest_version":"(.+?)"}i)
  end

  binary "taplo"
end
cask "taplo-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.10.0"
  sha256 :no_check

  url "https://github.com/tamasfe/taplo/releases/download/#{version}/taplo-darwin-#{arch}.gz"
  name "taplo-bin"
  desc "TOML toolkit written in Rust"
  homepage "https://github.com/tamasfe/taplo"

  livecheck do
    url "https://crates.io/api/v1/crates/taplo-cli"
    regex(%r{.*"max_stable_version":"(.+?)"}i)
  end

  binary "taplo"
end
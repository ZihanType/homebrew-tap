cask "cargo-llvm-cov-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.6.22"
  sha256 :no_check

  url "https://github.com/taiki-e/cargo-llvm-cov/releases/download/v#{version}/cargo-llvm-cov-#{arch}-apple-darwin.tar.gz"
  name "cargo-llvm-cov-bin"
  desc "Cargo subcommand to easily use LLVM source-based code coverage"
  homepage "https://github.com/taiki-e/cargo-llvm-cov"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "cargo-llvm-cov"
end
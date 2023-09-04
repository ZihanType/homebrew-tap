cask "cargo-generate-bin" do
  version "0.18.4"
  sha256 "543caf57d666277ea4baf76ad159be458be7935b4c17cf9d894a7650d33cf64f"

  url "https://github.com/cargo-generate/cargo-generate/releases/download/v#{version}/cargo-generate-v#{version}-x86_64-apple-darwin.tar.gz"
  name "cargo-generate-bin"
  desc "cargo, make me a project"
  homepage "https://github.com/cargo-generate/cargo-generate"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "cargo-generate"
end
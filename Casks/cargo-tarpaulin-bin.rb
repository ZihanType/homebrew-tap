cask "cargo-tarpaulin-bin" do
  version "0.27.1"
  sha256 "9c833aa8ec463d3825009ebd509e015a479de716aae89bd78ca76bc45607304c"

  url "https://github.com/xd009642/tarpaulin/releases/download/#{version}/cargo-tarpaulin-x86_64-apple-darwin.tar.gz"
  name "cargo-tarpaulin-bin"
  desc "A code coverage tool for Rust projects"
  homepage "https://github.com/xd009642/tarpaulin"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "cargo-tarpaulin"
end
cask "dx-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.6.3"
  sha256 :no_check

  url "https://github.com/DioxusLabs/dioxus/releases/download/v#{version}/dx-#{arch}-apple-darwin-v#{version}.tar.gz"
  name "dx-bin"
  desc "CLI tool for developing, testing, and publishing Dioxus apps"
  homepage "https://github.com/DioxusLabs/dioxus"

  livecheck do
    url "https://github.com/DioxusLabs/dioxus/releases"
    strategy :page_match
    regex(%r{.*/DioxusLabs/dioxus/releases/tag/v(.+)" data-view-component="true"}i)
  end

  binary "dx"
end
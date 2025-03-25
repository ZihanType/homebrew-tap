cask "leptosfmt-bin" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.33"
  sha256 :no_check

  url "https://github.com/bram209/leptosfmt/releases/download/#{version}/leptosfmt-#{version}-#{arch}-apple-darwin.tar.gz"
  name "leptosfmt-bin"
  desc "A formatter for the leptos view! macro"
  homepage "https://github.com/bram209/leptosfmt"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "leptosfmt"
end
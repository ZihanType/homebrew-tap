cask "trunk-bin" do
  version "0.14.0"
  sha256 "4924c03c41ff445e7afedbd7bd892a8513a4c92b35e6f422cad87dc381664df4"

  url "https://github.com/thedodd/trunk/releases/download/v#{version}/trunk-x86_64-apple-darwin.tar.gz"
  name "trunk-bin"
  desc "Build, bundle & ship your Rust WASM application to the web."
  homepage "https://github.com/thedodd/trunk"

  binary "trunk"
end
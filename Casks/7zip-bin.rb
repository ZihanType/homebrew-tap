cask "7zip-bin" do
  version "2407"

  url "https://7-zip.org/a/7z#{version}-mac.tar.xz"
  name "7zip-bin"
  desc "7-Zip is a file archiver with a high compression ratio"
  homepage "https://7-zip.org"

  livecheck do
    url "https://7-zip.org/download.html"
    regex(/>\s*Download\s+7-Zip\s+v?(\d+(?:\.\d+)+)\s+\([^)]+?\)/im)
  end

  binary "7zz"
end
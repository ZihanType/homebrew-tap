cask "font-smiley-sans" do
  version "1.1.0"
  sha256 "5a828523a93db22cbe8b1f1daaa70a1eb1314d876ce985ac311a0fb220c2ced5"

  url "https://github.com/atelier-anchor/smiley-sans/releases/download/v#{version}/smiley-sans-v#{version}.zip"
  name "Smiley Sans"
  name "得意黑"
  desc "一款在人文观感和几何特征中寻找平衡的中文黑体"
  homepage "https://github.com/atelier-anchor/smiley-sans"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "SmileySans-Oblique.ttf"
end
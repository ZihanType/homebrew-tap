cask "font-smiley-sans" do
  version "1.0.0"
  sha256 "8293c9b9fd44c9ee6b3fab696862445059e4d98b341a148d4544f91d01363fc1"

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
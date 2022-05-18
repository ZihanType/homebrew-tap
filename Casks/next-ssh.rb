cask "next-ssh" do
  version "1.2.2"
  sha256 "766a3584e5d710f75f770cb263633791c0744562c126f85e719bf01ed172bfa4"

  url "https://dl.xzhshch.com/NextSSH-#{version}.dmg"
  name "NextSSH"
  desc "简洁直观的 SSH 客户端"
  homepage "https://xzhshch.com/"

  livecheck do
    url "https://xzhshch.com/nextssh/Release-logs.html"
    strategy :sparkle
  end

  app "NextSSH.app"
end
cask "intellij-idea-cli" do
  version "1.0.0"
  sha256 :no_check

  url "https://www.jetbrains.com/help/idea/working-with-the-ide-features-from-command-line.html"
  name "intellij-idea-cli"
  desc "IntelliJ IDEA CLI"

  idea = "#{staged_path}/idea"
  livecheck do
    skip "no version"
  end

  binary idea

  preflight do
    File.write idea, <<~EOS
      #!/bin/sh
      open -na "IntelliJ IDEA.app" --args "$@"
    EOS
  end
end
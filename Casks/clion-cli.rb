cask "clion-cli" do
  version "1.0.0"
  sha256 :no_check

  url "https://www.jetbrains.com/help/clion/working-with-the-ide-features-from-command-line.html"
  name "clion-cli"
  desc "CLion CLI"

  clion = "#{staged_path}/clion"
  livecheck do
    skip "no version"
  end

  binary clion

  preflight do
    File.write clion, <<~EOS
      #!/bin/sh
      open -na "CLion.app" --args "$@"
    EOS
  end
end
cask "aseprite" do
  version "1.3.1"
  sha256 "13b0d17543d7b213b309fefd0005c80898deaa7c2cbadaa3a18450e2d5bcc29b"

  url "https://www.aseprite.org/downloads/trial/Aseprite-v#{version}-trial-macOS.dmg"
  name "Aseprite"
  desc "Animated Sprite Editor & Pixel Art Tool"
  homepage "https://www.aseprite.org/"

  livecheck do
    url "https://github.com/aseprite/aseprite/releases.atom"
    regex(/v(\d+.\d+.\d+)/)
  end

  app "Aseprite.app"

  zap trash: [
    "~/Library/Application Support/Aseprite",
    "~/Library/Logs/Homebrew/aseprite",
    "~/Library/Preferences/Aseprite.plist",
    "~/Library/Preferences/org.aseprite.Aseprite.plist",
    "~/Library/Saved Application State/org.aseprite.Aseprite.savedState",
  ]
end

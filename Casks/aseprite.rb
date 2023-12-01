cask "aseprite" do
  version "1.3.2"
  sha256 "476e2d2393083c5a8e60564128fb202f34cd76c5fe7d8bdba5741a5f73194e8c"

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

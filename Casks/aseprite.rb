cask "aseprite" do
  version "1.3.6"
  sha256 "246f5bde8c1d8b97c4edffe6863575eb3f31d1e4d459977cc6c772f3cb855e18"

  url "https://www.aseprite.org/downloads/trial/Aseprite-v#{version}-trial-macOS.dmg"
  name "Aseprite"
  desc "Animated Sprite Editor & Pixel Art Tool"
  homepage "https://www.aseprite.org/"

  livecheck do
    url "https://github.com/aseprite/aseprite/releases.atom"
    regex(/v(\d+.\d+.\d+)/)
  end

  auto_updates false

  app "Aseprite.app"

  zap trash: [
    "~/Library/Application Support/Aseprite",
    "~/Library/Logs/Homebrew/aseprite",
    "~/Library/Preferences/Aseprite.plist",
    "~/Library/Preferences/org.aseprite.Aseprite.plist",
    "~/Library/Saved Application State/org.aseprite.Aseprite.savedState",
  ]
end

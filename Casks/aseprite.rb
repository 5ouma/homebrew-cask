cask "aseprite" do
  version "1.3.7"
  sha256 "aefccdbbf8bd8e8cc037b5d54999cee7c87bc26ffc2199d5b25b2700e3ffce18"

  url "https://www.aseprite.org/downloads/trial/Aseprite-v#{version}-trial-macOS.dmg"
  name "Aseprite"
  desc "Animated Sprite Editor & Pixel Art Tool"
  homepage "https://www.aseprite.org/"

  livecheck do
    url "https://www.aseprite.org/trial"
    regex(/Aseprite Trial v(\d+\.\d+\.\d+(\.\d+)?) for macOS/)
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

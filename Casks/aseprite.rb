cask "aseprite" do
  version "1.3.4"
  sha256 "a7b46896b520ce7baff702fb44599cf785985621f1902e11f3369f9413377e92"

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

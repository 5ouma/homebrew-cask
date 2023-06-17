cask "aseprite" do
  version "1.2.40"
  sha256 "c1022b84c047235ee1f5967a93e7724521cbfda0a3cd30982891d2474984fe2a"

  url "https://www.aseprite.org/downloads/trial/Aseprite-v#{version}-trial-macOS.dmg"
  name "Aseprite"
  desc "Animated Sprite Editor & Pixel Art Tool"
  homepage "https://www.aseprite.org/"

  auto_updates true

  app "Aseprite.app"

  uninstall delete: [
    "/Applications/Aseprite.app",
    "~/Library/Application Support/Aseprite",
    "~/Library/Logs/Homebrew/aseprite",
    "~/Library/Preferences/Aseprite.plist",
    "~/Library/Preferences/org.aseprite.Aseprite.plist",
    "~/Library/Saved Application State/org.aseprite.Aseprite.savedState",
  ]
end

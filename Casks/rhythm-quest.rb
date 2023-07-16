cask "rhythm-quest" do
  version "0.28.0"
  sha256 "0f2d84c1b0003b74af719213412bfbddf33e43cb8205f6a3b4a60c5fcac6f4af"

  url "https://rhythmquestgame.com/demo/rhythm-quest-osxdemo-v#{version.dots_to_underscores}.zip"
  name "Rhythm Quest"
  desc "2-button rhythm platformer game"
  homepage "https://rhythmquestgame.com/"

  app "Rhythm Quest Demo.app"

  uninstall delete: [
    "/Applications/Rhythm Quest Demo.app",
    "~/Library/Application Support/com.ddrkirby.rhythmquest",
    "~/Library/Preferences/com.ddrkirby.rhythmquest.plist",
    "~/Library/Saved Application State/com.ddrkirby.rhythmquest.savedState",
  ]
end

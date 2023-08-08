cask "rhythm-quest" do
  version "0.29.1"
  sha256 "7c834b3e4a9b0b34b6c74b355ce264d57888dc6ad20180e0e7b4a8815e7058d3"

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

cask "rhythm-quest" do
  version "0.26.2"
  sha256 "7f184ac5948825a5fc58fd57bb2efe44332100ca8ae6d80337252fa0818e411a"

  url "https://rhythmquestgame.com/demo/rhythm-quest-osxdemo-v#{version.dots_to_underscores}.zip"
  name "Rhythm Quest"
  desc "Rhythm Quest is a 2-button rhythm platformer game."
  homepage "https://rhythmquestgame.com/"

  app "Rhythm Quest Demo.app"
  uninstall delete: [
    "/Applications/Rhythm Quest Demo.app",
    "~/Library/Application Support/com.ddrkirby.rhythmquest",
    "~/Library/Preferences/com.ddrkirby.rhythmquest.plist",
    "~/Library/Saved Application State/com.ddrkirby.rhythmquest.savedState",
  ]
end
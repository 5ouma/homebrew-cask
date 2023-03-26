cask "rhythm-quest" do
  version "0.26.4"
  sha256 "35dcf9ae172abca9f62eecbdeb36727d46b33241ec63085c1e501fa6d3aefd06"

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
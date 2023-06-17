cask "rhythm-quest" do
  version "0.26.5"
  sha256 "d25745a3928ffe5cb793af3db8f430af6b9d953818081bb2bf211ddf9b8883b0"

  url "https://rhythmquestgame.com/demo/rhythm-quest-osxdemo-v#{version.dots_to_underscores}.zip"
  name "Rhythm Quest"
  desc "Is a 2-button rhythm platformer game"
  homepage "https://rhythmquestgame.com/"

  app "Rhythm Quest Demo.app"

  uninstall delete: [
    "/Applications/Rhythm Quest Demo.app",
    "~/Library/Application Support/com.ddrkirby.rhythmquest",
    "~/Library/Preferences/com.ddrkirby.rhythmquest.plist",
    "~/Library/Saved Application State/com.ddrkirby.rhythmquest.savedState",
  ]
end

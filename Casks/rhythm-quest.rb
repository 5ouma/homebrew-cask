cask "rhythm-quest" do
  version "0.29.3"
  sha256 "b925b96fbcd7586912eaf53c19c195c80cdcfd13159cbbfa75d02e97cd848e59"

  url "https://rhythmquestgame.com/demo/rhythm-quest-osxdemo-v#{version.dots_to_underscores}.zip"
  name "Rhythm Quest"
  desc "2-button rhythm platformer game"
  homepage "https://rhythmquestgame.com/"

  livecheck do
    url "https://rhythmquestgame.com/demo/rhythm-quest-demo.html"
    regex(/Version (\d+.\d+.\d+)/)
  end

  app "Rhythm Quest Demo.app"

  uninstall delete: [
    "/Applications/Rhythm Quest Demo.app",
    "~/Library/Application Support/com.ddrkirby.rhythmquest",
    "~/Library/Preferences/com.ddrkirby.rhythmquest.plist",
    "~/Library/Saved Application State/com.ddrkirby.rhythmquest.savedState",
  ]
end

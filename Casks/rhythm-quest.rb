cask "rhythm-quest" do
  version "0.35.0"
  sha256 "f41c93d602552578ca1eee7e96dd637ce11bb254261d80c8cb4abf192fdb2cbb"

  url "https://rhythmquestgame.com/demo/builds/rhythm-quest-osxdemo-v#{version.dots_to_underscores}.zip"
  name "Rhythm Quest"
  desc "2-button rhythm platformer game"
  homepage "https://rhythmquestgame.com/"

  livecheck do
    url "https://rhythmquestgame.com/demo/rhythm-quest-demo.html"
    regex(/Version (\d+\.\d+\.\d+)/)
  end

  auto_updates false

  app "Rhythm Quest Demo.app"

  zap trash: [
    "~/Library/Application Support/com.ddrkirby.rhythmquest",
    "~/Library/Preferences/com.ddrkirby.rhythmquest.plist",
    "~/Library/Saved Application State/com.ddrkirby.rhythmquest.savedState",
  ]
end

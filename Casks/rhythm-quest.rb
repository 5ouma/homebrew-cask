cask "rhythm-quest" do
  version "0.30.0"
  sha256 "ccf89466fbc0cda179aeb3c9f3e433890254512235075e2e655b905fa848e8f4"

  url "https://rhythmquestgame.com/demo/builds/rhythm-quest-osxdemo-v#{version.dots_to_underscores}.zip"
  name "Rhythm Quest"
  desc "2-button rhythm platformer game"
  homepage "https://rhythmquestgame.com/"

  livecheck do
    url "https://rhythmquestgame.com/demo/rhythm-quest-demo.html"
    regex(/Version (\d+.\d+.\d+)/)
  end

  auto_updates false

  app "Rhythm Quest Demo.app"

  zap trash: [
    "~/Library/Application Support/com.ddrkirby.rhythmquest",
    "~/Library/Preferences/com.ddrkirby.rhythmquest.plist",
    "~/Library/Saved Application State/com.ddrkirby.rhythmquest.savedState",
  ]
end

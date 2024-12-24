cask "rhythm-quest" do
  version "0.35.3"
  sha256 "1bc7330e424bc3e7b9b4a551a229c57b7ad3b6fae5ca55e3ffe951bfbea24652"

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

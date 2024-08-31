cask "rhythm-quest" do
  version "0.32.1"
  sha256 "ddd079404c3d13424d1e3c7e27a324a1a34642da88f49f6aa87011d793992db0"

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

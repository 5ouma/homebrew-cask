cask "rhythm-quest" do
  version "0.32.0"
  sha256 "fe2c5b6e7ffe7fecac22d7065c0b9a41104d4c5d44a57326cac7a8eff831f48e"

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

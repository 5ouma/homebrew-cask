cask "trashrecover" do
  version "1.0.4"
  sha256 "916c731152a5c3d7b03bcccd12f32132ee4e251958991aba446e6fde86e2d199"

  url "https://www.corecode.io/downloads/trashrecover_latest.zip"
  name "TrashRecover"
  desc "TrashRecover automatically makes backups of your 'Trash' so that you can restore deleted files. TrashRecover is especially useful for laptops and any other Macs where setting up the 'TimeMachine' is not feasible or convenient."
  homepage "https://www.corecode.io/trashrecover"

  auto_updates true

  app "TrashRecover.app"
  uninstall delete: [
    "/Applications/TrashRecover.app",
  ]
  zap trash: [
    "~/Library/Application Scripts/com.corecode.TrashRecoverLaunchHelper",
    "~/Library/Application Support/TrashRecover",
    "~/Library/Caches/com.corecode.TrashRecover",
    "~/Library/Containers/com.corecode.TrashRecoverLaunchHelper",
    "~/Library/Preferences/com.corecode.TrashRecover.plist",
    "~/Library/WebKit/com.corecode.TrashRecover",
  ]
end
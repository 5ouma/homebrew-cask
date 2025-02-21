cask "freefilesync" do
  version "14.2"
  sha256 "6f30510cc7d4c8d145476ef2ed5620877671a4334de4a6ff503ef3ae252c193d"

  url "https://freefilesync.org/download/FreeFileSync_#{version}_macOS.zip"
  name "FreeFileSync"
  desc "Folder comparison and synchronization software"
  homepage "https://freefilesync.org/"

  livecheck do
    url "https://freefilesync.org/archive.php"
    regex(/FreeFileSync (\d+\.\d+)/)
  end

  auto_updates false

  pkg "FreeFileSync_#{version}.pkg",
      choices: [
        {
          "choiceIdentifier" => "installer_choice_1",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_2",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall delete: "/Applications/RealTimeSync.app"

  zap trash: [
    "~/Library/Application Support/FreeFileSync",
    "~/Library/Preferences/org.freefilesync.FreeFileSync.plist",
  ]
end

cask "freefilesync" do
  version "12.5"
  sha256 "ee8c3b3da2a5b36d8cd2ff15a762fe4cb3cb0d2add41ea902c6736236fe9e44c"

  url "https://freefilesync.org/download/FreeFileSync_#{version}_macOS.zip"
  name "FreeFileSync"
  desc "Folder comparison and synchronization software"
  homepage "https://freefilesync.org/"

  livecheck do
    url "https://freefilesync.org/archive.php"
    regex(/FreeFileSync (\d+.\d+)/)
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

  uninstall delete: [
    "/Applications/FreeFileSync.app",
    "/Applications/RealTimeSync.app",
  ]

  zap trash: [
    "~/Library/Application Support/FreeFileSync",
    "~/Library/Preferences/org.freefilesync.FreeFileSync.plist",
  ]
end

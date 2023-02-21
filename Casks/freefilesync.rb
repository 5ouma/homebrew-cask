cask "freefilesync" do
  version "12.1"
  sha256 "f0689d77dfd7c311b4f60465a810c93d55fee079353ac29401b7e530c90b315b"

  url "https://freefilesync.org/download/FreeFileSync_#{version}_macOS.zip"
  name "FreeFileSync"
  desc "FreeFileSync is a folder comparison and synchronization software that creates and manages backup copies of all your important files."
  homepage "https://freefilesync.org"

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

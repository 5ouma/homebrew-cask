cask "freefilesync" do
  version "12.2"
  sha256 "777472f81f992c3f2e1abf4ac9c8ada04221cf55167d927a4e4595fe1f9e9042"

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

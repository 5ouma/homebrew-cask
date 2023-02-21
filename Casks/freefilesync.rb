cask "freefilesync" do
  version "12.0"
  sha256 "438e061048d04b879776f2cd6fc70ac8e34fd2dca70d6736f58cb0fdf7219304"

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

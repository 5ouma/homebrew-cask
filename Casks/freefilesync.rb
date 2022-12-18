cask "freefilesync" do
    version "11.29"
    sha256 "bd9dd617a30a9dce3e2d5c10c7ab949eb89c24ae68d4c31a0174ede465a61092"

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

cask "freefilesync" do
    version "11.28"
    sha256 "fd6ba57a380e87ab728cdd8794d4efe165a44c914e7e0b99e224186b6b10900c"

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

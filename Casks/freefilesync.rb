cask "freefilesync" do
    version "11.27"
    sha256 "14f7947db041906f61f2f3d13c2948fa3b688e94163855a9a80d34286e982686"

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

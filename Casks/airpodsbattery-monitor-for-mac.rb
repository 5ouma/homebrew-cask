cask "airpodsbattery-monitor-for-mac" do
    version "2.2.5"
    sha256 "8c72d3377fe06bd106de899babbb5a5797f50ccef9ac36ea22db52415205ee2c"

    url "https://github.com/mohamed-arradi/AirpodsBattery-Monitor-For-Mac/releases/download/#{version}/Airpods.Battery.Monitor-v#{version}.zip"
    name "AirPods Battery Monitor"
    desc "Mac OS Status Bar App that puts at eyesight your AirPods battery levels. Universal Intel / M1 Compatible"
    homepage "https://github.com/mohamed-arradi/AirpodsBattery-Monitor-For-Mac"

    auto_updates false

    app "Airpods Battery Monitor.app"
    uninstall delete: [
        "/Applications/Airpods Battery Monitor.app",
    ]
    zap trash: [
        "~/Library/Application Scripts/com.mac.AirpodsPro-Battery.batteryWidget",
        "~/Library/Containers/com.mac.AirpodsPro-Battery.batteryWidget",
        "~/Library/Group Containers/group.mac.airpodsbatterygroup",
        "~/Library/Preferences/com.mac.AirpodsPro-Battery.plist",
    ]
end
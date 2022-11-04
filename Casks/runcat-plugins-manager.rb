cask "runcat-plugins-manager" do
    version "1.3"
    sha256 "37e0dc921c21b7c66e1f979e679653221e061b4d03d872ed5f65152aa263ea60"

    url "https://kyome.io/resources/runcat_plugins_manager.dmg"
    name "RunCat Plugins Manager"
    desc "RunCat will be able to show the CPU temperature."
    homepage "https://kyome.io/runcat/"

    auto_updates false

    app "RunCat Plugins Manager.app"
    uninstall delete: [
        "/Applications/RunCat Plugins Manager.app",
    ]
    zap trash: [
        "~/Library/Application Scripts/com.kyome.RunCatPlugins",
        "~/Library/Application Scripts/com.kyome.RunCatPluginsManager",
        "~/Library/Containers/com.kyome.RunCatPlugins",
        "~/Library/Containers/com.kyome.RunCatPluginsManager",
    ]
end
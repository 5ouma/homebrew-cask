cask "mousecape" do
    version "1813"
    sha256 "969ec7146af527e8900945950e9945f2b15c4eb19ff835f86da6332ec522ffd2"

    url "https://github.com/alexzielenski/Mousecape/releases/download/#{version}/Mousecape_#{version}.zip"
    name "Mousecape"
    desc "A free cursor manager for Mac OS 10.8+ built using private, nonintrusive CoreGraphics APIs."
    homepage "https://github.com/alexzielenski/Mousecape"

    auto_updates true

    app "Mousecape.app"
    uninstall delete: [
        "/Applications/Mousecape.app",
    ]
end
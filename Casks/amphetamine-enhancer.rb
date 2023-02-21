cask "amphetamine-enhancer" do
  version "1.0"
  sha256 "a8848c072e3aae6f89fac99fb4f71bac9cbc96b5b29cc57f7e01235c3e39a14c"

  url "https://github.com/x74353/Amphetamine-Enhancer/raw/master/Releases/Current/Amphetamine%20Enhancer.dmg"
  name "Amphetamine Enhancer"
  desc "Amphetamine Enhancer is a helper application that enhances a couple of Amphetamine's features."
  homepage "https://github.com/x74353/Amphetamine-Enhancer"

  auto_updates true

  app "Amphetamine Enhancer.app"
  uninstall delete: [
    "/Applications/Amphetamine Enhancer.app",
  ]
end
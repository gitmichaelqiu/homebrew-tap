cask "spaceswitcher" do
  version "0.4.0-beta.1"
  sha256 "ac661a654a74a0dd2ede600f1db71520908e5ec707e5421fc17fe3f23c8a4e9a"

  url "https://github.com/gitmichaelqiu/SpaceSwitcher/releases/download/v#{version}/SpaceSwitcher.#{version}.dmg"
  name "SpaceSwitcher"
  desc "Control which app and dock to show in each space"
  homepage "https://github.com/gitmichaelqiu/SpaceSwitcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "SpaceSwitcher.app"

  uninstall quit: "michaelqiu.SpaceSwitcher"

  zap trash: [
    "~/Library/Application Support/SpaceSwitcher",
    "~/Library/Preferences/michaelqiu.SpaceSwitcher.plist",
    "~/Library/HTTPStorages/michaelqiu.SpaceSwitcher",
  ]
end

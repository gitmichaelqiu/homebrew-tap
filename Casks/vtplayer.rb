cask "spaceswitcher" do
  version "1.0.0"
  sha256 "3f06fdb19477020ab9348c4e391c676c4516cffb1d5d49bb376f9673eefbc17d"

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

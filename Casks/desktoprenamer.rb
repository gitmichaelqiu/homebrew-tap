cask "desktoprenamer" do
  version "1.11.1"
  sha256 "d0563ec6808171c9c594dc221edf8ce0a2730ca3b6ba117d020170e76d4dcd12"

  url "https://github.com/gitmichaelqiu/DesktopRenamer/releases/download/v#{version}/DesktopRenamer.#{version}.dmg"
  name "DesktopRenamer"
  desc "Rename macOS Desktops/Spaces from the menubar"
  homepage "https://github.com/gitmichaelqiu/DesktopRenamer"

  app "DesktopRenamer.app"

  zap trash: [
    "~/Library/Application Support/DesktopRenamer",
    "~/Library/Preferences/com.michaelqiu.DesktopRenamer.plist",
    "~/Library/HTTPStorages/com.michaelqiu.DesktopRenamer",
    "~/Library/Caches/com.michaelqiu.DesktopRenamer",
  ]
end

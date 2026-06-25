cask "desktoprenamer" do
  version "1.13.1"
  sha256 "c1d49602a96ca5bd032d084e5a04a2064aca394a5e7aa174e993b366cf43d883"

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

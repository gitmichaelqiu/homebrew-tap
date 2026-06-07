cask "desktoprenamer" do
  version "1.13.0"
  sha256 "d489a42f6a943417f6c17f9960fea68fe6795b15ea528fdbf5e9d42e0f910480"

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

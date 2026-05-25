cask "desktoprenamer" do
  version "1.12.0"
  sha256 "c15d8ea5124101b4ea97342f72ad450c5fb94754fc335db297e9ccd3941c5efc"

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

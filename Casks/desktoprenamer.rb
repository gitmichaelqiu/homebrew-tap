cask "desktoprenamer" do
  version "1.13.2"
  sha256 "0fe73dfa49b4d2f77752d9ff6e8406a574bce5641c3b86d5ed33a27b4bae2341"

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

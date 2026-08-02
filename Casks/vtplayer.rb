cask "vtplayer" do
  version "1.0.0"
  sha256 "c4dbbec6f804a1285bc41a5450c89b145e44a9665fc83689f74e30e37195b44d"

  url "https://github.com/gitmichaelqiu/VTPlayer/releases/download/v#{version}/VTPlayer_macOS_v#{version}.dmg"
  name "VTPlayer"
  desc "Real-time video enhancement player for macOS"
  homepage "https://github.com/gitmichaelqiu/VTPlayer"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "VTPlayer.app"
end

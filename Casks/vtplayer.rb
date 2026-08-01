cask "vtplayer" do
  version "1.0.0"
  sha256 "3f06fdb19477020ab9348c4e391c676c4516cffb1d5d49bb376f9673eefbc17d"

  url "https://github.com/gitmichaelqiu/VTPlayer/releases/download/v#{version}/VTPlayer_macOS_v#{version}.dmg"
  name "VTPlayer"
  desc "Real-time video enhancement player for macOS"
  homepage "https://github.com/gitmichaelqiu/VTPlayer"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "VTPlayer.app"
end

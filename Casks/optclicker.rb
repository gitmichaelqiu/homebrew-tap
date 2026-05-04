cask "optclicker" do
  version "1.5.0"
  sha256 "95d01e8e708aa53c9d0b121698f1884342859f587b474936bae099a1863b2788"

  url "https://github.com/gitmichaelqiu/OptClicker/releases/download/v#{version}/OptClicker.#{version}.dmg"
  name "OptClicker"
  desc "Let you right-click with the Option key"
  homepage "https://github.com/gitmichaelqiu/OptClicker"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "OptClicker.app"

  uninstall quit: "michaelqiu.OptClicker"

  zap trash: [
    "~/Library/Application Support/OptClicker",
    "~/Library/Preferences/michaelqiu.OptClicker.plist",
    "~/Library/HTTPStorages/michaelqiu.OptClicker",
  ]
end

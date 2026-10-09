cask "hagtamp" do
  version "0.1.6"
  sha256 "bdcd5bb8216833a8b874cb19cabf78fa0cfd84d979093c4045fd694147422a15"

  url "https://github.com/mmag/hagtamp/releases/download/v#{version}/Hagtamp-#{version}.zip"
  name "Hagtamp"
  desc "Music player with classic skins for local files and Navidrome"
  homepage "https://github.com/mmag/hagtamp"

  depends_on macos: :sonoma

  app "Hagtamp.app"

  zap trash: [
    "~/Library/Application Support/Hagtamp",
    "~/Library/Caches/app.hagtamp.Hagtamp",
    "~/Library/Caches/Hagtamp",
    "~/Library/Preferences/app.hagtamp.Hagtamp.plist",
  ]
end

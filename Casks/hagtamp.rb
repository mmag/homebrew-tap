cask "hagtamp" do
  version "0.1.3"
  sha256 "12f662a8a5b80b71d487e3188e602d77468bb0ad5bde60a8ffafe1609692b3ad"

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

cask "hagtamp" do
  version "0.1.5"
  sha256 "025042bd89ef04af0e53fb685118752b09bf7b5a94ae7f5acd9eaf0f5695bd8c"

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

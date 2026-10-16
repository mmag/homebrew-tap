cask "hagtamp" do
  version "0.1.7"
  sha256 "ee43a718d0f5729c631d51739c3f66b9e8d42fef6482ad49c2862248d0d313b1"

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

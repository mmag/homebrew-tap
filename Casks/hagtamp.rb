cask "hagtamp" do
  version "0.1.1"
  sha256 "fbbb9d4f24401d73483f2e5d5a74528bb83c7b7b309d77d80cb013747e5c5751"

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

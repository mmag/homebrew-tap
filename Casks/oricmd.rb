cask "oricmd" do
  version "0.2b"
  sha256 "277a7a715b83b7a22683f4ecae52a1ad30abbe1150bc1dbbb857c86f5ab16091"

  url "https://github.com/mmag/OriCmd/releases/download/v#{version}/OriCmd-#{version}.dmg"
  name "OriCmd"
  desc "Two-panel file manager with a familiar look and keyboard control"
  homepage "https://github.com/mmag/OriCmd"

  auto_updates true
  depends_on macos: :sonoma

  app "OriCmd.app"

  zap trash: [
    "~/Library/Caches/ru.themmag.OriCmd",
    "~/Library/Preferences/ru.themmag.OriCmd.plist",
    "~/Library/Saved Application State/ru.themmag.OriCmd.savedState",
  ]
end

cask "oricmd" do
  version "0.3b"
  sha256 "bf3c9380d80efb2a00548a2580870c28fd9298b6f2cf883a1813ccbadb539652"

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

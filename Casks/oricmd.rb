cask "oricmd" do
  version "0.9b"
  sha256 "c609cd8b85792f72cc3bfc9a958055e8a84e1aefb5048efe81e6a287c0c03af8"

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

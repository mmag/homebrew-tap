cask "oricmd" do
  version "0.12b"
  sha256 "ed7d5223796e419a59098110f0723b046848aec45a9759bf05a5c13d5bbe4846"

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

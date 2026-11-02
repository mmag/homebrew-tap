cask "tikatype" do
  version "1.0.5"
  sha256 "2b3a9d1d2f7818dc136dd22a79017b713db16e8f0e7a8cc3414b795380b086f4"

  url "https://github.com/mmag/Tikatype/releases/download/v#{version}/Tikatype-#{version}-app.zip"
  name "Tikatype"
  desc "Converts text between keyboard layouts"
  homepage "https://github.com/mmag/Tikatype"

  depends_on :macos

  app "Tikatype.app"
end

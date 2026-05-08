cask "tikatype" do
  version "1.0.0"
  sha256 "b894f058840162b17749b663e53b19ad3aca846a2a3f7c1bc7a07143022403f5"

  url "https://github.com/mmag/Tikatype/releases/download/#{version}/Tikatype-#{version}-app.zip"
  name "Tikatype"
  desc "Converts text between keyboard layouts"
  homepage "https://github.com/mmag/Tikatype"

  app "Tikatype.app"
end

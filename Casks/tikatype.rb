cask "tikatype" do
  version "1.0.1"
  sha256 "a4bd5c9b715a84c1754cba3ccc90e4b3d1cb0fe23dd78bbaeb30f09c2ac40888"

  url "https://github.com/mmag/Tikatype/releases/download/#{version}/Tikatype-#{version}-app.zip"
  name "Tikatype"
  desc "Converts text between keyboard layouts"
  homepage "https://github.com/mmag/Tikatype"

  app "Tikatype.app"
end

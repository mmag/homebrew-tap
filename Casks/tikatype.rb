cask "tikatype" do
  version "1.0.4"
  sha256 "34bb92fffa5661d2a161b357150ff0e03a9983a4dddc0d9ea1a48d6a99ba5e93"

  url "https://github.com/mmag/Tikatype/releases/download/v#{version}/Tikatype-#{version}-app.zip"
  name "Tikatype"
  desc "Converts text between keyboard layouts"
  homepage "https://github.com/mmag/Tikatype"

  depends_on :macos

  app "Tikatype.app"
end

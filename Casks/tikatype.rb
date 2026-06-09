cask "tikatype" do
  version "1.0.3"
  sha256 "804338f35d62e760db9bcc987348bf1ece0f93e1ec2d30c4d353565dfeb1bcea"

  url "https://github.com/mmag/Tikatype/releases/download/#{version}/Tikatype-#{version}-app.zip"
  name "Tikatype"
  desc "Converts text between keyboard layouts"
  homepage "https://github.com/mmag/Tikatype"

  depends_on :macos

  app "Tikatype.app"
end

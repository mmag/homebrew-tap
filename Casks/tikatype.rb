cask "tikatype" do
  version "1.0.2"
  sha256 "0629bfab4f0f17eba7800216f55f6b8682b35f207e9dd2269b407b6d29d6f12b"

  url "https://github.com/mmag/Tikatype/releases/download/#{version}/Tikatype-#{version}-app.zip"
  name "Tikatype"
  desc "Converts text between keyboard layouts"
  homepage "https://github.com/mmag/Tikatype"

  depends_on :macos

  app "Tikatype.app"
end

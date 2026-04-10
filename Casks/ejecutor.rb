cask "ejecutor" do
  version "1.0"
  sha256 "44546893135247861f2a159e1c23b5af068a709e973532ab0c865109677cac02"

  url "https://github.com/mmag/ejecutor/releases/download/v#{version}/Ejecutor.app.zip"
  name "Ejecutor"
  desc "Menu bar app for cleaning and ejecting external drives"
  homepage "https://github.com/mmag/ejecutor"

  app "Ejecutor.app"
end

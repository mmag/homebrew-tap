cask "ll2lossy" do
  version "0.1.1"
  sha256 "d8fbbd204b55ac0ef2941f11574fccf630f0fb7a5ecab448792d45a7a5877909"

  url "https://github.com/mmag/ll2lossy/releases/download/v#{version}/LosslessToMP3.app.zip"
  name "LosslessToMP3"
  desc "Batch converter of lossless audio to MP3"
  homepage "https://github.com/mmag/ll2lossy"

  depends_on macos: :sonoma

  app "LosslessToMP3.app"
end

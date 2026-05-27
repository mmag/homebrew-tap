cask "ll2lossy" do
  version "0.1"
  sha256 "574fc3f83cd4c6a0c4294c498edb4b9d725c4853f9d4c0fcedab9429fde9d490"

  url "https://github.com/mmag/ll2lossy/releases/download/v#{version}/LosslessToMP3.app.zip"
  name "LosslessToMP3"
  desc "Batch converter of lossless audio to MP3"
  homepage "https://github.com/mmag/ll2lossy"

  depends_on :macos => ">= :sonoma"

  app "LosslessToMP3.app"
end

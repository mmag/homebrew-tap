class Sshman < Formula
  desc "Terminal SSH connection manager with Debian-inspired UI"
  homepage "https://github.com/mmag/sshmanager"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mmag/sshmanager/releases/download/v0.1.0/sshman-darwin-arm64"
      sha256 "67397411d4d289972093a4ab4f37ea856bf4b47f327757f3b0a4f6428486ef92"
    end
    on_intel do
      url "https://github.com/mmag/sshmanager/releases/download/v0.1.0/sshman-darwin-amd64"
      sha256 "7d760eb39d5c926692dd91c991dddddf32f1341dab2cd6093d847eff76558c33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mmag/sshmanager/releases/download/v0.1.0/sshman-linux-arm64"
      sha256 "568f5a5840641a44df63a10d855d93d8ab94244b0f1e56480dd9c08de4d410de"
    end
    on_intel do
      url "https://github.com/mmag/sshmanager/releases/download/v0.1.0/sshman-linux-amd64"
      sha256 "1d2c9d42ed9b9491bd739aaef9a0ed5c7f93797b2309246f421eb555f5b86e4a"
    end
  end

  def install
    os   = OS.mac? ? "darwin" : "linux"
    arch = Hardware::CPU.arm? ? "arm64" : "amd64"
    bin.install "sshman-#{os}-#{arch}" => "sshman"
  end

  test do
    assert_predicate bin/"sshman", :executable?
  end
end

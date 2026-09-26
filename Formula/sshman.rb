class Sshman < Formula
  desc "Terminal SSH connection manager with Debian-inspired UI"
  homepage "https://github.com/mmag/sshmanager"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mmag/sshmanager/releases/download/v0.2.0/sshman-darwin-arm64"
      sha256 "b7a232dcf00845217da70cf9f5de155c8ee1ed8d28324d2894f4c441748ff778"
    end
    on_intel do
      url "https://github.com/mmag/sshmanager/releases/download/v0.2.0/sshman-darwin-amd64"
      sha256 "00762f002f193ecfa13baea6adec45989966b038605be0f0c17e624b2e1b871b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mmag/sshmanager/releases/download/v0.2.0/sshman-linux-arm64"
      sha256 "99b347a75cce813dab6db617b8ce4ea8221654d7b8fe4bd853e14e7570869aba"
    end
    on_intel do
      url "https://github.com/mmag/sshmanager/releases/download/v0.2.0/sshman-linux-amd64"
      sha256 "b8b92647e9ea4590163374d8d0b48b1415b16247a337bdc443c58b8081c403a1"
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

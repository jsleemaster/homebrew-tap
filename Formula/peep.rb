class Peep < Formula
  desc "Peep into your AI coding agents — terminal dashboard with pixel-art characters"
  homepage "https://github.com/jsleemaster/peep"
  version "0.5.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-macos-arm64.tar.gz"
      sha256 "7719e83379478a3233a745da43c9bcfdbff0ab8a9a5fd037c27074cd10e19a90"
    else
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-macos-intel.tar.gz"
      sha256 "73dd5cc3ab774cac94dc0bebba529646e1a22d1415bcd1564c323300e7683757"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-linux-arm64.tar.gz"
      sha256 "ea781df2a209a4026abccad439f43d9a96190e632e562d74992c36abc9be8c77"
    else
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-linux-x86_64.tar.gz"
      sha256 "3e2f38e97ddb15fb6ed49a5ccf6001d4c8e30024c2c96040a190088cf93e897b"
    end
  end

  def install
    bin.install "peep"
  end

  test do
    assert_match "Peep", shell_output("#{bin}/peep --help")
  end
end

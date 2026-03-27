class Peep < Formula
  desc "Peep into your AI coding agents — terminal dashboard with pixel-art characters"
  homepage "https://github.com/jsleemaster/peep"
  version "0.5.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-macos-arm64.tar.gz"
      sha256 "e10bb7e85c4ebd20f7579714eacfc08db4ca294eeba21335e9fbb9958de302d0"
    else
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-macos-intel.tar.gz"
      sha256 "c5f7b0989c9d9f126820e2f7ebfb2e03d1798729cc8a6ba6f6392b5be6b9de11"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-linux-arm64.tar.gz"
      sha256 "7fcd0fccd5f34543f4ed0ba28521c5ba5cf465733d3b155fd63f7a9bf1702f4f"
    else
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-linux-x86_64.tar.gz"
      sha256 "2cc67694cf0731cc7ec7f0f565304eb5f0306bfe9705d81fc66314f430cceb12"
    end
  end

  def install
    bin.install "peep"
  end

  test do
    assert_match "Peep", shell_output("#{bin}/peep --help")
  end
end

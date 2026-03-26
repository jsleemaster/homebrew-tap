class Peep < Formula
  desc "Peep into your AI coding agents — terminal dashboard with pixel-art characters"
  homepage "https://github.com/jsleemaster/peep"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-macos-arm64.tar.gz"
      sha256 "d71689e2d376fb8a81ca3474dd57655a5395d4dd87fa629889c6117798060750"
    else
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-macos-intel.tar.gz"
      sha256 "1219e383216175c1edf3fe5e93713c4bfa6fc3a2542d2ffb5b7185b3c7b62e10"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-linux-arm64.tar.gz"
      sha256 "946fe3ee7dcc81fdf6245352eb1269977a14aaa6875fded01d8e9c0255a28e48"
    else
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-linux-x86_64.tar.gz"
      sha256 "2c6c168f2afd7d97c05afbc0a5540b02fdf72c1a2872d1f7cc46c336d13b2c55"
    end
  end

  def install
    bin.install "peep"
  end

  test do
    assert_match "Peep", shell_output("#{bin}/peep --help")
  end
end

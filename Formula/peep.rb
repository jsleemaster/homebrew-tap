class Peep < Formula
  desc "Peep into your AI coding agents — terminal dashboard with pixel-art characters"
  homepage "https://github.com/jsleemaster/peep"
  version "0.6.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-macos-arm64.tar.gz"
      sha256 "e86a0d2f53166e6e7657c4e87ea7257717ed983a2efb4d8c91341a76e2f1b6a6"
    else
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-macos-intel.tar.gz"
      sha256 "70b206c89ed0bdb1529c168c0670fac21c2218c740012c9c908e1b5b3afa8432"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-linux-arm64.tar.gz"
      sha256 "cd259978ac5f2abf7e1ea4b5fbf9325841f3ad9bb4daff5c7cc05aee2b2c7408"
    else
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-linux-x86_64.tar.gz"
      sha256 "32279b051e995ebd0f08df99e679f43c20deabe5ef38ce44da1d2f4e9da12cf4"
    end
  end

  def install
    bin.install "peep"
  end

  test do
    assert_match "Peep", shell_output("#{bin}/peep --help")
  end
end

class Peep < Formula
  desc "Peep into your AI coding agents — terminal dashboard with pixel-art characters"
  homepage "https://github.com/jsleemaster/peep"
  version "0.6.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-macos-arm64.tar.gz"
      sha256 "1830f949a9a6432a755cd9a335c5b3de10a7c7ed53425fb13cd8a9933ada50d1"
    else
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-macos-intel.tar.gz"
      sha256 "d094563c45ee6ff0c695b1f79fa97c67a1df8b7baeb5fe9cb619ecf9d50e9f1b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-linux-arm64.tar.gz"
      sha256 "24520dd71354aa0b07f609a02535c645db66e1fcb43069aa918954f6e3db71bd"
    else
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-linux-x86_64.tar.gz"
      sha256 "6073ab4108d83ed9c2f123db38f4e396a8e39c4bc4281b13585a76a7dc04a13c"
    end
  end

  def install
    bin.install "peep"
  end

  test do
    assert_match "Peep", shell_output("#{bin}/peep --help")
  end
end

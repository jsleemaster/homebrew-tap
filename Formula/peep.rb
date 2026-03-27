class Peep < Formula
  desc "Peep into your AI coding agents — terminal dashboard with pixel-art characters"
  homepage "https://github.com/jsleemaster/peep"
  version "0.4.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-macos-arm64.tar.gz"
      sha256 "96cd8048f11d9fe662785ec529ee15a1d460bd045321b7f76e1ee8ed225bc62b"
    else
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-macos-intel.tar.gz"
      sha256 "fdf24a08dabbfe1f9f7ed9a0dd9224046c0ef6ad5aa5fd6504c76f8629fd46aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-linux-arm64.tar.gz"
      sha256 "25bdd254b51773dabe14a4752a869862a5f33db3adf658f3cf6e0f20223b264f"
    else
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-linux-x86_64.tar.gz"
      sha256 "094f3d6e0c4720a3231b8d0e0e8d82b1f88be9e7fcf70402eb1d58643c69b0b2"
    end
  end

  def install
    bin.install "peep"
  end

  test do
    assert_match "Peep", shell_output("#{bin}/peep --help")
  end
end

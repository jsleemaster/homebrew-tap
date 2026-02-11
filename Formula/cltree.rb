class Cltree < Formula
  desc "A TUI file explorer for Claude Code CLI"
  homepage "https://github.com/jsleemaster/cltree"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/cltree/releases/download/v0.3.0/cltree-macos-aarch64.tar.gz"
      sha256 "e0608a8268d5af4b2d221255345dd79a076fd5fdda2d0b8ed2f73d7e6b6ad194"
    else
      url "https://github.com/jsleemaster/cltree/releases/download/v0.3.0/cltree-macos-x86_64.tar.gz"
      sha256 "17cbd9d17bc1410a6f34125f1254a3b3fdb0e5f206b0db15e2fdaca8f0c5ccaf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/cltree/releases/download/v0.3.0/cltree-linux-aarch64.tar.gz"
      sha256 "1d76381b25a8d664a1fd2ea38bb79946ab2ecd5586a97993172b41f63a42d71c"
    else
      url "https://github.com/jsleemaster/cltree/releases/download/v0.3.0/cltree-linux-x86_64.tar.gz"
      sha256 "07e20819ac34a31d310c7be99159ef2252600030115389f71cfa8fce7b73419c"
    end
  end

  def install
    bin.install "cltree"
  end

  test do
    assert_match "cltree", shell_output("\#{bin}/cltree --version")
  end
end

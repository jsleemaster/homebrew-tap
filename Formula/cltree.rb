class Cltree < Formula
  desc "A TUI file explorer for Claude Code CLI"
  homepage "https://github.com/jsleemaster/cltree"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/cltree/releases/download/v0.3.1/cltree-macos-aarch64.tar.gz"
      sha256 "93709cd04487fcd3a0777f6ca2213b45ee94e04ebedde6bfc3db25c36b3cfa4b"
    else
      url "https://github.com/jsleemaster/cltree/releases/download/v0.3.1/cltree-macos-x86_64.tar.gz"
      sha256 "378484f0fd5944cf5686bd70fe70369bc6c088311a98e318c41c91b2627ed260"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/cltree/releases/download/v0.3.1/cltree-linux-aarch64.tar.gz"
      sha256 "c9ea4fe67abf883785218272daa717d876f9c2b5fd8dbe8c2aef412869946cd5"
    else
      url "https://github.com/jsleemaster/cltree/releases/download/v0.3.1/cltree-linux-x86_64.tar.gz"
      sha256 "1b998745eb0923b2a92dab96411d0ae02e49b7394cf7e2fbacc75c1b565a2669"
    end
  end

  def install
    bin.install "cltree"
  end

  test do
    assert_match "cltree", shell_output("\#{bin}/cltree --version")
  end
end

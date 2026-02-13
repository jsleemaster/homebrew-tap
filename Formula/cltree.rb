class Cltree < Formula
  desc "A TUI file explorer for Claude Code CLI"
  homepage "https://github.com/jsleemaster/cltree"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/cltree/releases/download/v0.4.1/cltree-macos-aarch64.tar.gz"
      sha256 "e93090474d7559218dad0a7fb06b14e72e7beaa7052c8b0179290e1aa8cbbbe2"
    else
      url "https://github.com/jsleemaster/cltree/releases/download/v0.4.1/cltree-macos-x86_64.tar.gz"
      sha256 "b3e8a0600aeb8fe2c5041269c6105ef359de753b8c5aabb1f627c58a97db87b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/cltree/releases/download/v0.4.1/cltree-linux-aarch64.tar.gz"
      sha256 "554cb69db92aea837381c28f30b72733a1a46a49db9b3ba19061e445c9a59326"
    else
      url "https://github.com/jsleemaster/cltree/releases/download/v0.4.1/cltree-linux-x86_64.tar.gz"
      sha256 "28a346e7642598915acaf62a0e964b18fed27e0daea1905ed515a7eccf84814b"
    end
  end

  def install
    bin.install "cltree"
  end

  test do
    assert_match "cltree", shell_output("\#{bin}/cltree --version")
  end
end

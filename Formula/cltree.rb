class Cltree < Formula
  desc "A TUI file explorer for Claude Code CLI"
  homepage "https://github.com/jsleemaster/cltree"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/cltree/releases/download/v0.3.2/cltree-macos-aarch64.tar.gz"
      sha256 "9bc6fdc09d26a14bc87c1cbf20f98c0597b636830924ae8e8990eba31b4586d7"
    else
      url "https://github.com/jsleemaster/cltree/releases/download/v0.3.2/cltree-macos-x86_64.tar.gz"
      sha256 "91e650b0f65340865c6e9b30bb8c33a98b0f8c3b5a3897277311e6ecddd4cb5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/cltree/releases/download/v0.3.2/cltree-linux-aarch64.tar.gz"
      sha256 "929e6322a3b1ac8fa00e291e6d31c965a81bfa84198bcf06914fabced0b24996"
    else
      url "https://github.com/jsleemaster/cltree/releases/download/v0.3.2/cltree-linux-x86_64.tar.gz"
      sha256 "ae958d0e97f78f322f6fcce8919dd25a064888a4652e1809b5288fd6c6e3e068"
    end
  end

  def install
    bin.install "cltree"
  end

  test do
    assert_match "cltree", shell_output("\#{bin}/cltree --version")
  end
end

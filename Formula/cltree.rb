class Cltree < Formula
  desc "A TUI file explorer for Claude Code CLI"
  homepage "https://github.com/jsleemaster/cltree"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/cltree/releases/download/v0.4.0/cltree-macos-aarch64.tar.gz"
      sha256 "89a19101dc3ba148e3e620439af2ff7fcd592a9ad08dbe96b8a49602fa73e71e"
    else
      url "https://github.com/jsleemaster/cltree/releases/download/v0.4.0/cltree-macos-x86_64.tar.gz"
      sha256 "17a5482e14817b261ca85cc73452fbfcc28f34d577992de96df8741ffb64b70d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/cltree/releases/download/v0.4.0/cltree-linux-aarch64.tar.gz"
      sha256 "bdde30950b301cc860610a3479c324e672df87565426d0a05b605eb890d44b1f"
    else
      url "https://github.com/jsleemaster/cltree/releases/download/v0.4.0/cltree-linux-x86_64.tar.gz"
      sha256 "395605f0f7bb8f1df595cbc70eb16b8ba340c640dccc98c9d2ac91a138b0488e"
    end
  end

  def install
    bin.install "cltree"
  end

  test do
    assert_match "cltree", shell_output("\#{bin}/cltree --version")
  end
end

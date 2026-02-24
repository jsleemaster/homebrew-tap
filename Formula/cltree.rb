class Cltree < Formula
  desc "A TUI file explorer for Claude Code CLI"
  homepage "https://github.com/jsleemaster/cltree"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/cltree/releases/download/v0.4.5/cltree-macos-aarch64.tar.gz"
      sha256 "abdd4409f9871b4a6f2291329fe8b0e3acfd516e4c2d6a27da55ff41fd45bdbc"
    else
      url "https://github.com/jsleemaster/cltree/releases/download/v0.4.5/cltree-macos-x86_64.tar.gz"
      sha256 "faf959be28566b50467b716920b15b082fc69f4ee8d816ddcebc275e47eca033"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/cltree/releases/download/v0.4.5/cltree-linux-aarch64.tar.gz"
      sha256 "98be82d54e7363f6de70fcdac691f63cab155d2df9b13575532929b13d598b3f"
    else
      url "https://github.com/jsleemaster/cltree/releases/download/v0.4.5/cltree-linux-x86_64.tar.gz"
      sha256 "b92cf0a0f052095038a152c774372f95023c2f922ff74be01390f71b24865410"
    end
  end

  def install
    bin.install "cltree"
  end

  test do
    assert_match "cltree", shell_output("\#{bin}/cltree --version")
  end
end

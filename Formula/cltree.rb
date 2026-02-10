class Cltree < Formula
  desc "A TUI file explorer for Claude Code CLI"
  homepage "https://github.com/jsleemaster/cltree"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/cltree/releases/download/v0.2.2/cltree-macos-aarch64.tar.gz"
      sha256 "a69eb79885833e0344125658a3010d4d52f6cdf6b74a06cd7a96ce9ac53dcb78"
    else
      url "https://github.com/jsleemaster/cltree/releases/download/v0.2.2/cltree-macos-x86_64.tar.gz"
      sha256 "e565fc20eec5539012a2452df1d75762630b99f7a1825e150f32923f6acd0d99"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/cltree/releases/download/v0.2.2/cltree-linux-aarch64.tar.gz"
      sha256 "d3a9f5f95bd745c58a584365ab09f8dffee788f7091ec6d407d50ba2a12df90c"
    else
      url "https://github.com/jsleemaster/cltree/releases/download/v0.2.2/cltree-linux-x86_64.tar.gz"
      sha256 "995458565b83429e5d223fb58e7a6e4aa412054ed93736de615463e6292d9d7e"
    end
  end

  def install
    bin.install "cltree"
  end

  test do
    assert_match "cltree", shell_output("\#{bin}/cltree --version")
  end
end

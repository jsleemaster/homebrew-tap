class ClaudeExplorer < Formula
  desc "A TUI file explorer for Claude Code CLI"
  homepage "https://github.com/jsleemaster/claude-explorer"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/claude-explorer/releases/download/v0.2.0/claude-explorer-macos-aarch64.tar.gz"
      sha256 "e7d9f02aeef56c1bd83e3073d91c3ffde8707595ff4cd9a699fbce2ddf120e03"
    else
      url "https://github.com/jsleemaster/claude-explorer/releases/download/v0.2.0/claude-explorer-macos-x86_64.tar.gz"
      sha256 "94061eac1bacb7be6c8c5ed7a2dd71047c8a7bab77e3496a14c696498e16d921"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/claude-explorer/releases/download/v0.2.0/claude-explorer-linux-aarch64.tar.gz"
      sha256 "1ba609ad8489bb2fcd022492d8a19ad29bcc4eafa3f6bc4bd97585fc09599482"
    else
      url "https://github.com/jsleemaster/claude-explorer/releases/download/v0.2.0/claude-explorer-linux-x86_64.tar.gz"
      sha256 "748026d2fef4710c2acdbcf8fd798d0f237f495b9f4adbf5c3e67e5410fceeec"
    end
  end

  def install
    bin.install "claude-explorer"
  end

  test do
    assert_match "claude-explorer", shell_output("\#{bin}/claude-explorer --version")
  end
end

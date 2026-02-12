class Cltree < Formula
  desc "A TUI file explorer for Claude Code CLI"
  homepage "https://github.com/jsleemaster/cltree"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/cltree/releases/download/v0.4.0/cltree-macos-aarch64.tar.gz"
      sha256 "b13860368290c5e365198ec1bca4817632a28a1d68cccf4bd36e9cc2cb3c9eed"
    else
      url "https://github.com/jsleemaster/cltree/releases/download/v0.4.0/cltree-macos-x86_64.tar.gz"
      sha256 "171ad4eafb6c347571030ed53c3284a0b328b5afd5052d623e8b73873afd8170"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/cltree/releases/download/v0.4.0/cltree-linux-aarch64.tar.gz"
      sha256 "0d8c28b93806193230b972752fa59e6a8baa6f43f7a4f61357acff47c5bd2a6e"
    else
      url "https://github.com/jsleemaster/cltree/releases/download/v0.4.0/cltree-linux-x86_64.tar.gz"
      sha256 "1a1a2c518361d8c52797c975bd7e73af12fdc93c18c3f7dd16ea646ec7e321ed"
    end
  end

  def install
    bin.install "cltree"
  end

  test do
    assert_match "cltree", shell_output("\#{bin}/cltree --version")
  end
end

class Peep < Formula
  desc "Peep into your AI coding agents — terminal dashboard with pixel-art characters"
  homepage "https://github.com/jsleemaster/peep"
  version "0.5.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-macos-arm64.tar.gz"
      sha256 "9dc59ba244f2de2494651068226e2d22442cc6b8fbd751d8138973b6701f8f78"
    else
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-macos-intel.tar.gz"
      sha256 "b718770de574942dc49e1d1b86d72a86004816731acaba385c5473f1ec988a9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-linux-arm64.tar.gz"
      sha256 "a6de0bbae20da689dbef7e37169c0f8bf54efcdc1a7b8a4cdee85a4d2ddef0c5"
    else
      url "https://github.com/jsleemaster/peep/releases/download/v#{version}/peep-linux-x86_64.tar.gz"
      sha256 "2e82e8e903fcf87587a59a72d9ce611ec5c188780840d8bc3be79b7acd965532"
    end
  end

  def install
    bin.install "peep"
  end

  test do
    assert_match "Peep", shell_output("#{bin}/peep --help")
  end
end

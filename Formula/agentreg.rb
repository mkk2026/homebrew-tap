class Agentreg < Formula
  desc "DNS for AI agents: register, discover, and health-check MCP agents"
  homepage "https://github.com/mkk2026/agentreg"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkk2026/agentreg/releases/download/v0.1.0/agentreg_0.1.0_darwin_arm64.tar.gz"
      sha256 "ce47a2606208e6c361a63a894af33f3c34e0188c56c8788063f0678f06b4906f"
    end
    on_intel do
      url "https://github.com/mkk2026/agentreg/releases/download/v0.1.0/agentreg_0.1.0_darwin_amd64.tar.gz"
      sha256 "d1d9634168c3f312cd0e9268b1679290013d2c291f9b1b6014aec84e9700472c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkk2026/agentreg/releases/download/v0.1.0/agentreg_0.1.0_linux_arm64.tar.gz"
      sha256 "b4220c4c87d54acd67dbd7e09e7509456c7b6497f510afbb696f74b9f7ba6ca1"
    end
    on_intel do
      url "https://github.com/mkk2026/agentreg/releases/download/v0.1.0/agentreg_0.1.0_linux_amd64.tar.gz"
      sha256 "c612d0f6dcd197732f6a7ac68aa1ba1467a399050d05162588cdcd82dad523dd"
    end
  end

  def install
    bin.install "agentctl"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/agentctl --version")
  end
end

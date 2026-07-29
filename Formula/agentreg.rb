class Agentreg < Formula
  desc "DNS for AI agents: register, discover, and health-check MCP agents"
  homepage "https://github.com/mkk2026/agentreg"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkk2026/agentreg/releases/download/v0.1.2/agentreg_0.1.2_darwin_arm64.tar.gz"
      sha256 "f25ad471cc7693a0d8287f3b9e35ecf535a3764696187f18d36a37a2aff409c6"
    end
    on_intel do
      url "https://github.com/mkk2026/agentreg/releases/download/v0.1.2/agentreg_0.1.2_darwin_amd64.tar.gz"
      sha256 "80cce4557b39d957d82ae3b0e30c6a608bb2600ee7c06e7e32891ab70702d103"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkk2026/agentreg/releases/download/v0.1.2/agentreg_0.1.2_linux_arm64.tar.gz"
      sha256 "42a4e73a7de355d5cb9e86fd00fffebc9a5a01861b5daab003e63cf2667da7de"
    end
    on_intel do
      url "https://github.com/mkk2026/agentreg/releases/download/v0.1.2/agentreg_0.1.2_linux_amd64.tar.gz"
      sha256 "ad788a9720482ddc7c3bd969507ea8fdad98d70870ba036f4881f6cc04439537"
    end
  end

  def install
    bin.install "agentctl"
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/agentctl --version")
  end
end

class Agentreg < Formula
  desc "DNS for AI agents: register, discover, and health-check MCP agents"
  homepage "https://github.com/mkk2026/agentreg"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkk2026/agentreg/releases/download/v0.1.1/agentreg_0.1.1_darwin_arm64.tar.gz"
      sha256 "0abb7b5445423e266262bd16b02d1e684d005f6194947b28d6024f93e238455a"
    end
    on_intel do
      url "https://github.com/mkk2026/agentreg/releases/download/v0.1.1/agentreg_0.1.1_darwin_amd64.tar.gz"
      sha256 "edd2642a99b469b754ef41a59f19a44495f7cecc96d4d438517d6bd5a965448b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkk2026/agentreg/releases/download/v0.1.1/agentreg_0.1.1_linux_arm64.tar.gz"
      sha256 "d60cc581c556637d45d1b800ffa0ab87c49bd1dd5f9b8330ef7c7f128f2bac49"
    end
    on_intel do
      url "https://github.com/mkk2026/agentreg/releases/download/v0.1.1/agentreg_0.1.1_linux_amd64.tar.gz"
      sha256 "28d1df359afd91e6019d311f66dea15f28c433266f98a94333d834007cd41da4"
    end
  end

  def install
    bin.install "agentctl"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/agentctl --version")
  end
end

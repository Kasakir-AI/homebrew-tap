class AgentSync < Formula
  include Language::Python::Virtualenv

  desc "Keep Claude Code, Codex and Cursor in step: skills, agents, MCP servers and CLIs"
  homepage "https://github.com/Kasakir-AI/agent-sync"
  url "https://github.com/Kasakir-AI/agent-sync/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "acba06f3b141476ed97b3984c315a510715424e9279d8b0ce7fbfeb66b348bec"
  license "MIT"

  depends_on "node"
  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      Install whatever else is missing (Claude Code, Codex, Cursor Agent):
        agent-sync setup
      See what it would change:  agent-sync run --dry-run
      Schedule the daily upkeep: agent-sync install --launcher
      Settings: ~/.config/agent-sync/config.toml (see config.example.toml in the repository)
    EOS
  end

  test do
    assert_match "agent-sync #{version}", shell_output("#{bin}/agent-sync --version")
    assert_match "schedule: not installed", shell_output("#{bin}/agent-sync status")
  end
end

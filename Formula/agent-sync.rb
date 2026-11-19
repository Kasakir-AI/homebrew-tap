class AgentSync < Formula
  include Language::Python::Virtualenv

  desc "Keep Claude Code, Codex and Cursor in step: skills, agents, MCP servers and CLIs"
  homepage "https://github.com/Kasakir-AI/agent-sync"
  url "https://github.com/Kasakir-AI/agent-sync/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "fc5380a8b99b7975633c7bed2e732cb6ddf1624499dd2026cdbc177e179a2ecf"
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

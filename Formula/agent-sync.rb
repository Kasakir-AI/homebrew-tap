class AgentSync < Formula
  include Language::Python::Virtualenv

  desc "Keep Claude Code, Codex and Cursor in step: skills, agents, MCP servers and CLIs"
  homepage "https://github.com/Kasakir-AI/agent-sync"
  url "https://github.com/Kasakir-AI/agent-sync/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "507bde6fa22b7a5e928b4896d12b4d97810c57fda9217e5c94d44444a3d76194"
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
      Change the settings:       agent-sync config
    EOS
  end

  test do
    assert_match "agent-sync #{version}", shell_output("#{bin}/agent-sync --version")
    assert_match "schedule: not installed", shell_output("#{bin}/agent-sync status")
  end
end

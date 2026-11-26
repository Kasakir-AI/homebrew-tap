class AgentSync < Formula
  include Language::Python::Virtualenv

  desc "Keep AI coding agents in step: skills, plugins, MCP servers, memory and CLIs"
  homepage "https://github.com/Kasakir-AI/agent-sync"
  url "https://github.com/Kasakir-AI/agent-sync/archive/refs/tags/v0.9.4.tar.gz"
  sha256 "9e63be197a111dfee844e2d860b96e2e67b6ac790e9ad488a19083c3242b1e1e"
  license "MIT"

  depends_on "node"
  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      Install whatever else is missing (Claude Code, Codex, Cursor, Gemini CLI, Antigravity):
        agent-sync setup
      See what it would change:  agent-sync run --dry-run
      Schedule the daily upkeep: agent-sync install --launcher
      Change the settings:       agent-sync config
      What each agent loads:     agent-sync inventory
    EOS
  end

  test do
    assert_match "agent-sync #{version}", shell_output("#{bin}/agent-sync --version")
    assert_match "schedule: not installed", shell_output("#{bin}/agent-sync status")
    assert_match "Opus", pipe_output("#{bin}/agent-sync-statusline claude", '{"model":{"display_name":"Opus"}}')
  end
end

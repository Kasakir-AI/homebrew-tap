class AgentSync < Formula
  include Language::Python::Virtualenv

  desc "Keep Claude Code, Codex and Cursor in step: skills, agents, MCP servers and CLIs"
  homepage "https://github.com/Kasakir-AI/agent-sync"
  url "https://github.com/Kasakir-AI/agent-sync/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0b1462fc746f42977cb1fe6edd8ff78eb484aa87282cdc7a96d0a75ed1b7f36f"
  license "MIT"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      agent-sync also needs git and Node (it runs the `skills` CLI with npx).
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

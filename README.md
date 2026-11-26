# Kasakir-AI Homebrew tap

Homebrew casks and formulae for Kasakir-AI apps and tools.

| Name | What it is |
| --- | --- |
| `update-workbench` | [Update Workbench](https://github.com/Kasakir-AI/UpdateWorkbench): finds and installs updates for Mac apps and Homebrew packages. |
| `marmot` | [Marmot](https://github.com/Kasakir-AI/Marmot): free, open-source disk cleaner that shows everything before it touches anything. |
| `aster` | [Aster](https://github.com/Kasakir-AI/Aster): Markdown editor with Finder Quick Look previews. |
| `packrat` | [Packrat](https://github.com/Kasakir-AI/Packrat): finds, downloads and organizes pictures and videos. |
| `agent-sync` (formula) | [agent-sync](https://github.com/Kasakir-AI/agent-sync): keeps AI coding agents in step (Claude Code, Codex, Cursor, Gemini CLI, Antigravity): skills, agents, MCP servers, plugins and CLIs, once a day. |

## Update Workbench

```sh
brew install --cask kasakir-ai/tap/update-workbench
```

Requires macOS 14 (Sonoma) or later on Apple silicon. Update with `brew upgrade`. Update Workbench installed
this way also updates itself through Homebrew.

Update Workbench’s disk image is signed with Developer ID and notarized by Apple.

## Marmot 🐿️

```sh
brew install --cask kasakir-ai/tap/marmot
```

Requires macOS 26 (Tahoe) or later on Apple Silicon.

- **Updates:** Marmot updates itself with Sparkle, so a plain `brew upgrade` skips it. Use the app's own update
  check, or `brew upgrade --cask --greedy marmot`.
- **First launch:** Marmot’s disk image is signed with Developer ID and notarized by Apple.
- **Upgrades and uninstalls** quit Marmot first so it's replaced or removed cleanly. `brew uninstall --zap marmot`
  also removes its settings, caches and saved state.

### Moving from the old Marmot tap

Marmot used to live in its own tap, `kasakir-ai/marmot`. If you installed it from there, `brew update` points you
here. Homebrew only switches an app to a new tap you trust, so finish the move with:

```sh
brew tap kasakir-ai/tap
brew trust --cask kasakir-ai/tap/marmot
brew reinstall --cask kasakir-ai/tap/marmot
brew untap kasakir-ai/marmot
```

Your Marmot settings are kept.

## Aster

```sh
brew install --cask kasakir-ai/tap/aster
```

Requires macOS 14 (Sonoma) or later. The universal disk image is signed with Developer ID and notarized by Apple.

## Packrat

```sh
brew install --cask kasakir-ai/tap/packrat
```

The Apple Silicon disk image is signed with Developer ID and notarized by Apple.

## agent-sync

```sh
brew install kasakir-ai/tap/agent-sync
agent-sync setup                  # install Claude Code, Codex, Cursor Agent if missing
agent-sync run --dry-run          # see what it would change; changes nothing
agent-sync install --launcher     # run it once a day (and add a Desktop launcher)
```

A command-line tool for macOS and Linux. Update with `brew upgrade`; the daily schedule
keeps working across upgrades. Settings live in `~/.config/agent-sync/config.toml`; see the
[README](https://github.com/Kasakir-AI/agent-sync#configure).

## Support

These apps are free. If one helps you, star its repository, [buy me a coffee on Ko-fi](https://ko-fi.com/kasakir), or [sponsor on GitHub](https://github.com/sponsors/Kasakir-AI), once or monthly. Aster is also coming to the Mac App Store.

## License

MIT, see [LICENSE](LICENSE). Covers the cask and formula files in this tap. Each app has its own license in its repository.

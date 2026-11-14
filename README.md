# Kasakir-AI Homebrew tap

Homebrew casks for Kasakir-AI apps.

| Cask | App |
| --- | --- |
| `update-workbench` | [Update Workbench](https://github.com/Kasakir-AI/UpdateWorkbench): finds and installs updates for Mac apps and Homebrew packages. |
| `marmot` | [Marmot](https://github.com/Kasakir-AI/Marmot): free, open-source disk cleaner that shows everything before it touches anything. |

## Update Workbench

```sh
brew install --cask kasakir-ai/tap/update-workbench
```

Requires macOS 14 (Sonoma) or later on Apple silicon. Update with `brew upgrade`. Update Workbench installed
this way also updates itself through Homebrew.

Update Workbench is ad-hoc signed and not notarized by Apple. The cask removes the download quarantine flag after
installing so the app opens normally; if you'd rather approve it yourself, download the DMG from the app's
[Releases page](https://github.com/Kasakir-AI/UpdateWorkbench/releases) instead.

## Marmot 🐿️

```sh
brew install --cask kasakir-ai/tap/marmot
```

Requires **macOS 26 (Tahoe) or later**.

- **Updates:** Marmot updates itself with Sparkle, so a plain `brew upgrade` skips it. Use the app's own update
  check, or `brew upgrade --cask --greedy marmot`.
- **First launch:** Marmot isn't notarized (free community software), so macOS blocks it once. Open it, click
  **Done**, then go to **System Settings → Privacy & Security** and click **Open Anyway**. Or clear the quarantine
  flag in Terminal: `xattr -cr /Applications/Marmot.app`
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

## License

MIT, see [LICENSE](LICENSE). Covers the cask files in this tap. Each app has its own license in its repository.

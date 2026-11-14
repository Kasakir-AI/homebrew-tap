# Homebrew cask for Marmot.
# Lives in the tap repo: github.com/Kasakir-AI/homebrew-tap (Casks/marmot.rb)
# Regenerate for each release with: sh scripts/make-cask.sh
cask "marmot" do
  version "1.0.0"
  sha256 "0efcf444842b0b48c223ec841a4f624e4ec052348eeb959975ca5e931de4d627"

  url "https://github.com/Kasakir-AI/Marmot/releases/download/v#{version}/Marmot-#{version}.zip"
  name "Marmot"
  desc "Free, open-source disk cleaner that shows everything before it touches anything"
  homepage "https://github.com/Kasakir-AI/Marmot"

  # Marmot updates itself via Sparkle after install.
  auto_updates true
  depends_on macos: :tahoe

  app "Marmot.app"

  # Quit Marmot first so upgrades and uninstalls replace or remove it cleanly.
  uninstall quit: "dev.marmot.app"

  zap trash: [
    "~/Library/Application Support/Marmot",
    "~/Library/Caches/dev.marmot.app",
    "~/Library/HTTPStorages/dev.marmot.app",
    "~/Library/Preferences/dev.marmot.app.plist",
    "~/Library/Saved Application State/dev.marmot.app.savedState",
  ]

  caveats <<~CAVEATS
    Marmot is not notarized (free community software). On first launch:
    System Settings → Privacy & Security → "Open Anyway".
    Or clear quarantine directly:
      xattr -cr /Applications/Marmot.app
  CAVEATS
end

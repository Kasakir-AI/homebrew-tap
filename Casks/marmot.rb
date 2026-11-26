# frozen_string_literal: true

# Homebrew cask for Marmot.
# Lives in the tap repo: github.com/Kasakir-AI/homebrew-tap (Casks/marmot.rb)
# Regenerate for each release with: sh scripts/make-cask.sh
cask "marmot" do
  version "1.0.3"
  sha256 "b93d9449f392e8ce2acc7a6e22f7c25d4b6ffc92825d3335a9b92a11de4b3350"

  url "https://github.com/Kasakir-AI/Marmot/releases/download/v#{version}/Marmot-#{version}.dmg"
  name "Marmot"
  desc "Free, open-source disk cleaner that shows everything before it touches anything"
  homepage "https://github.com/Kasakir-AI/Marmot"

  # Marmot updates itself via Sparkle after install.
  auto_updates true
  depends_on arch: :arm64
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
end

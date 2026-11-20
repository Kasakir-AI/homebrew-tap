cask "aster" do
  version "1.0.0"
  sha256 "4debfe1e1906d99c99c8e0a09ffe917a298c179ce62de247af814111b74f73ab"

  url "https://github.com/Kasakir-AI/Aster/releases/download/v#{version}/Aster-#{version}.dmg"
  name "Aster"
  desc "Markdown editor with Finder Quick Look previews"
  homepage "https://github.com/Kasakir-AI/Aster"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Aster.app"

  uninstall quit: "io.github.kasakir-ai.aster"

  zap trash: [
    "~/Library/Caches/io.github.kasakir-ai.aster",
    "~/Library/Preferences/io.github.kasakir-ai.aster.plist",
    "~/Library/Saved Application State/io.github.kasakir-ai.aster.savedState",
  ]
end

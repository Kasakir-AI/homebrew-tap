cask "aster" do
  version "1.0.5"
  sha256 "6fe5db3b035e6d1ceeae015ca75aa899761a861582b908cae8b7a2a0280b69ea"

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

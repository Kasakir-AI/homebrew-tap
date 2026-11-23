cask "aster" do
  version "1.0.4"
  sha256 "684133725ba956d55e81883debd9e79951ea5ae89ae3d7750087ae7b6743b6b4"

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

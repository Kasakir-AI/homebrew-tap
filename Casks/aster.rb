cask "aster" do
  version "0.2.2"
  sha256 "c50e201f717c75c011adc9d82af2fac41e933375c90de16885ec62b4a8c8e361"

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

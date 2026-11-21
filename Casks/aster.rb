# frozen_string_literal: true

cask "aster" do
  version "1.0.2"
  sha256 "c913a2a80b3e849c7f05bd5a8f4bf7760001163f2d8f24f2b0a007167e227a1c"

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

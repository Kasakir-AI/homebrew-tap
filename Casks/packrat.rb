# frozen_string_literal: true

cask "packrat" do
  version "3.4.3"
  sha256 "3bdc63b5061e22dd34f76bcb8eae69f206c380b42912d7fd4e1d05bd0bb96bd5"

  url "https://github.com/Kasakir-AI/Packrat/releases/download/v#{version}/Packrat-macOS.dmg"
  name "Packrat"
  desc "Finds, downloads, and organizes pictures and videos"
  homepage "https://github.com/Kasakir-AI/Packrat"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Packrat.app"

  uninstall quit: "ai.kasakir.packrat"

  caveats "The disk image requires macOS 14.4 or later."
end

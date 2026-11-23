# frozen_string_literal: true

cask "packrat" do
  version "3.4.4"
  sha256 "28d38a3cd87ee20af5c5c3bd6bed814fa527417a58284ad3499e05022f39b276"

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

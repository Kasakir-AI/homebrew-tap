# frozen_string_literal: true

cask "packrat" do
  version "3.4.2"
  sha256 "fa834ef3323756d190734bf3704bc478995631fa97c924ad3bdae11daec5e057"

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

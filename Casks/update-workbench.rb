# frozen_string_literal: true

cask "update-workbench" do
  version "0.5.2"
  sha256 "9496164ee7c43290b612ff5344e3d1b3290ce59f226ddc4f7ebc1050d9bc89a0"

  url "https://github.com/Kasakir-AI/UpdateWorkbench/releases/download/v#{version}/UpdateWorkbench-#{version}.dmg"
  name "Update Workbench"
  desc "Finds and installs updates for apps and Homebrew packages"
  homepage "https://github.com/Kasakir-AI/UpdateWorkbench"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Update Workbench.app"

  zap trash: [
    "~/Library/Application Support/Update Workbench",
    "~/Library/Preferences/local.updateworkbench.app.plist",
  ]
end

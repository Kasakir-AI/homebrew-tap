# frozen_string_literal: true

cask "update-workbench" do
  version "0.5.3"
  sha256 "725d67816b14d8a3828679c78c19f505f80ad376105c465a93b778901f2bf8b5"

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

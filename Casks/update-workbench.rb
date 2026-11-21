# frozen_string_literal: true

cask "update-workbench" do
  version "0.5.1"
  sha256 "17047fedd712241f28c9d801c0f0b93fcaac456ce988e1f9a6487f7e403a38dc"

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

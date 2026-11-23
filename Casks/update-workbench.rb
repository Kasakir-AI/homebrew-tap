# frozen_string_literal: true

cask "update-workbench" do
  version "0.5.4"
  sha256 "a024b957e5fae3956090f4926ce4598bd1b7e231339a69206f5ae670c951a5b4"

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

cask "update-workbench" do
  version "0.5.0"
  sha256 "aa1d560ad673d26adb8a7566aef04237f97397b9ba0c3c5c549093b1c29826a7"

  url "https://github.com/Kasakir-AI/UpdateWorkbench/releases/download/v#{version}/UpdateWorkbench-#{version}.dmg"
  name "Update Workbench"
  desc "Finds and installs updates for Mac apps and Homebrew packages"
  homepage "https://github.com/Kasakir-AI/UpdateWorkbench"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Update Workbench.app"

  # The app is ad-hoc signed, not notarized: clear the download quarantine so it opens normally.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Update Workbench.app"]
  end

  zap trash: [
    "~/Library/Application Support/Update Workbench",
    "~/Library/Preferences/local.updateworkbench.app.plist",
  ]
end

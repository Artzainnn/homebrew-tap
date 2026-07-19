cask "claudeusagebar" do
  version "1.3.1"
  sha256 "0aa238d0c25284f175db9e5abc36ca005292925ae773ab1758fb73991d4213b0"

  url "https://github.com/Artzainnn/ClaudeUsageBar/releases/download/v#{version}/ClaudeUsageBar-Installer.dmg",
      verified: "github.com/Artzainnn/ClaudeUsageBar/"
  name "ClaudeUsageBar"
  desc "Menu bar app that tracks Claude and Claude Code usage limits"
  homepage "https://claudeusagebar.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "ClaudeUsageBar.app"

  zap trash: [
    "~/Library/Caches/com.claude.usagebar",
    "~/Library/Preferences/com.claude.usagebar.plist",
  ]
end

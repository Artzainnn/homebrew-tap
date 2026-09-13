cask "claudeusagebar" do
  version "1.3.3"
  sha256 "451cf5f66975cd216461521cea87e6012cd64a75f70b6ad6a8e25feea5906d86"

  url "https://github.com/Artzainnn/ClaudeUsageBar/releases/download/v#{version}/ClaudeUsageBar-Installer.dmg"
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

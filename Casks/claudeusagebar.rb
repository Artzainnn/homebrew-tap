cask "claudeusagebar" do
  version "1.3.6"
  sha256 "a10f865e875c752b9f21e9669e06d552175fcf1834b9e1aa7f5eb9e1d8045b58"

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

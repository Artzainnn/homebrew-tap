cask "claudeusagebar" do
  version "1.3.4"
  sha256 "a27f57fcd1e605b8e8f82b7e4f87f52a2d8db8dbb30c4a942857e5df162376fd"

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

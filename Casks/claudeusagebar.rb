cask "claudeusagebar" do
  version "1.3.2"
  sha256 "07369d0564cd224dc82909df15650df962122852f3e747713cf645ad9c6a2d63"

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

cask "codexusagebar" do
  version "1.1.0"
  sha256 "2383d69a7e7bac63253dbf5d44c2374104973e7c91a709b19df002e6c5bba8dd"

  url "https://github.com/Artzainnn/CodexUsageBar/releases/download/v#{version}/CodexUsageBar-Installer.dmg",
      verified: "github.com/Artzainnn/CodexUsageBar/"
  name "CodexUsageBar"
  desc "Menu bar app that tracks ChatGPT Codex usage limits"
  homepage "https://codexusagebar.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "CodexUsageBar.app"

  zap trash: [
    "~/Library/Caches/com.codex.usagebar",
    "~/Library/Preferences/com.codex.usagebar.plist",
  ]
end

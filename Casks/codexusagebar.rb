cask "codexusagebar" do
  version "1.1.3"
  sha256 "19064f66a95c58dcc243875edcf9a0c0f7cdfb72d5fa837a58f04ec33f42ff85"

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

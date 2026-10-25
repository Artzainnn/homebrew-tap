cask "codexusagebar" do
  version "1.1.2"
  sha256 "a6075f2008d7a8b4fda51cc9f385570abbc60abe20c5aa80c7607d05225b90f4"

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

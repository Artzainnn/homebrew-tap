cask "codexusagebar" do
  version "1.0.0"
  sha256 "0629b6299534a98afb830b48dcb8f8936bfd53f4c6a680829d388e8f6c26e3e1"

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

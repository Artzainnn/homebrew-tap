cask "codexusagebar" do
  version "1.1.1"
  sha256 "49434cc10ab16d38af65f38a22da7b40b30a63caa3d3158a7e4f9c1eb289d3f2"

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

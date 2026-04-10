cask "nexus-tools" do
  version "1.0.8"
  sha256 "295663995ace8fcf542e3b5c9d2fa2cc2710abba644e50d10b6deb3607f94c51"

  url "https://github.com/tdragon8113/nexus-tools/releases/download/v#{version}/NexusTools.dmg"
  name "NexusTools"
  desc "开发者工具箱"
  homepage "https://github.com/tdragon8113/nexus-tools"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "NexusTools.app"

  zap trash: [
    "~/Library/Application Support/NexusTools",
    "~/Library/Caches/com.nexus.NexusTools",
    "~/Library/HTTPStorages/com.nexus.NexusTools",
    "~/Library/Preferences/com.nexus.NexusTools.plist",
  ]
end
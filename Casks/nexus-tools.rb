cask "nexus-tools" do
  version "1.0.2"
  sha256 "2ca27f0c6b38f1190a4a444f710d2c43fd2ad8aab02b9e610b5b02139536717a"

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
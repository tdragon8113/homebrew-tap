cask "nexus-tools" do
  version "1.0.1"
  sha256 "8bc6ec62e01b05a8d291fe992835b97709e6b1e9aba8ac6f45103855ddb7a0d6"

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
cask "nexus-tools" do
  version "1.0.5"
  sha256 "8cc55af96889e37314e82c6f1aa7ec2e04edce4b9375cf92ee2fe65c83916e38"

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
cask "nexus-tools" do
  version "1.0.6"
  sha256 "e372d5137a0b88db6d849e5018d3c85badda2a62e6e1e24d44a58e4d21ace47d"

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
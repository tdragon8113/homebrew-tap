cask "route-pilot" do
  version "1.7.17"
  sha256 "9575850d12994d9e22386a4d5d58aca360261c22f9e8490d943073f12a9c2a84"

  url "https://github.com/tdragon8113/route-pilot/releases/download/v#{version}/RoutePilot.dmg"
  name "RoutePilot"
  desc "macOS VPN 路由管理工具"
  homepage "https://github.com/tdragon8113/route-pilot"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "RoutePilot.app"

  uninstall delete: []

  zap delete: [
    "/etc/sudoers.d/autoroute",
    "~/Library/LaunchAgents/com.sunny.RoutePilotDaemon.plist",
  ],
  trash: [
    "~/Library/Application Support/RoutePilot",
    "~/Library/Caches/com.sunny.RoutePilot",
    "~/Library/HTTPStorages/com.sunny.RoutePilot",
    "~/Library/Logs/RoutePilot",
    "~/Library/Preferences/com.sunny.RoutePilot.plist",
  ]
end
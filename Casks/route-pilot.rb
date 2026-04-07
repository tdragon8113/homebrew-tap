cask "route-pilot" do
  version "1.7.7"
  sha256 "44aec865460f7387da55e08ae3ca9def220f62e2df0fe23e75a1f252538329c5"

  url "https://github.com/tdragon8113/route-pilot/releases/download/v#{version}/RoutePilot.dmg"
  name "RoutePilot"
  desc "macOS VPN 路由管理工具"
  homepage "https://github.com/tdragon8113/route-pilot"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "RoutePilot.app"

  uninstall delete: [
    "~/Library/Application Support/RoutePilot/route-pilot-daemon",
    "~/Library/LaunchAgents/com.sunny.RoutePilotDaemon.plist",
  ]

  zap trash: [
    "/etc/sudoers.d/autoroute",
    "~/Library/Application Support/RoutePilot",
    "~/Library/Caches/com.sunny.RoutePilot",
    "~/Library/HTTPStorages/com.sunny.RoutePilot",
    "~/Library/Logs/RoutePilot",
    "~/Library/Preferences/com.sunny.RoutePilot.plist",
  ]
end
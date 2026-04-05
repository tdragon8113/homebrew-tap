cask "route-pilot" do
  version "1.7.1"
  sha256 "5bea8a3578aaba44281f199031f48f3785603c9c1be2dff3f01b28d0b90d60b6"

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
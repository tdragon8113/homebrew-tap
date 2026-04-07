cask "route-pilot" do
  version "1.7.8"
  sha256 "5d0c6125402a2b23d6e22cd3f08f524555a0eba0dcbc6c39fc26f8646609dc7f"

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
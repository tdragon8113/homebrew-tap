cask "route-pilot" do
  version "1.7.5"
  sha256 "20f0b777dbb9bd41ca9597e82bfaa391a3ec132635d076664272be01746f0400"

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
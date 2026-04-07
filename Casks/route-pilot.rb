cask "route-pilot" do
  version "1.7.15"
  sha256 "d47e9c7f5be2e20384aa7348009950a26bd1b4f3e59d9d7bcc204f171d27e034"

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
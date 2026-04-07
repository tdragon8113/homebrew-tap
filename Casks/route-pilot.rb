cask "route-pilot" do
  version "1.7.12"
  sha256 "312aaffef5ad72d275becd525394e7f85edbe6a0d8da374ccbd7542deef6d41b"

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
    "~/Library/LaunchAgents/com.sunny.RoutePilotDaemon.plist",
  ]

  zap delete: [
    "/etc/sudoers.d/autoroute",
  ],
  trash: [
    "~/Library/Application Support/RoutePilot",
    "~/Library/Caches/com.sunny.RoutePilot",
    "~/Library/HTTPStorages/com.sunny.RoutePilot",
    "~/Library/Logs/RoutePilot",
    "~/Library/Preferences/com.sunny.RoutePilot.plist",
  ]
end
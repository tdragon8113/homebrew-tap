cask "route-pilot" do
  version "1.7.0"
  sha256 "d232bf12bfc811f0c251d6b10cbb80a2e58b56110d059ce1900ae97fffa93360"

  url "https://github.com/tdragon8113/route-pilot/releases/download/v#{version}/RoutePilot.dmg"
  name "RoutePilot"
  desc "macOS VPN 路由管理工具"
  homepage "https://github.com/tdragon8113/route-pilot"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "RoutePilot.app"

  zap trash: [
    "~/Library/Application Support/RoutePilot",
    "~/Library/Caches/com.sunny.RoutePilot",
    "~/Library/HTTPStorages/com.sunny.RoutePilot",
    "~/Library/Logs/RoutePilot",
    "~/Library/Preferences/com.sunny.RoutePilot.plist",
  ]
end
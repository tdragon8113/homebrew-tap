cask "nexus-tools" do
  version "0.2.10"
  sha256 "07ebda672a35795ef9bef28f3044f3f2d3c7c671bd4b8ffeb1514f9f4719a240"

  url "https://github.com/tdragon8113/nexus-tools/releases/download/web-tools-v#{version}/NexusTools.dmg"
  name "Nexus Tools"
  desc "开发者工具箱（Electron 桌面版，Alt+Space 唤起）"
  homepage "https://github.com/tdragon8113/nexus-tools"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Nexus Tools.app"

  postflight do
    # 清除下载隔离标记，避免 Gatekeeper 提示「已损坏」
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Nexus Tools.app"],
                   must_succeed: false
  end

  zap trash: [
    "~/Library/Application Support/Nexus Tools",
    "~/Library/Application Support/nexus-tools",
    "~/Library/Preferences/com.nexus.tools.plist",
    "~/Library/Saved Application State/com.nexus.tools.savedState",
  ]
end

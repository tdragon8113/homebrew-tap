cask "nexus-tools" do
  version "0.2.14"
  sha256 "a70c39e8bd2cc98e5a80feb1c8a7534dfc224b68692d09ff77c0fea430dce99e"

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

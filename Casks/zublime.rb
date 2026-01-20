cask "zublime" do
  version "0.1.1"

  depends_on arch: :arm64

  sha256 "8c6887d86e3191e0f7b7d5d634176448850aeb317d3b988df31f4a2179f31d2b"
  url "https://github.com/lydakis/zublime/releases/download/v#{version}/Zublime-aarch64.dmg"

  name "Zublime"
  desc "A fork of Zed editor"
  homepage "https://github.com/lydakis/zublime"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Zublime.app"

  zap trash: [
    "~/Library/Application Support/Zublime",
    "~/Library/Caches/Zublime",
    "~/Library/Logs/Zublime",
    "~/Library/Preferences/ooo.engineered.Zublime.plist",
    "~/Library/Saved Application State/ooo.engineered.Zublime.savedState",
  ]
end

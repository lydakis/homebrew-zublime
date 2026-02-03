cask "zublime" do
  version "0.1.1"

  depends_on arch: :arm64

  sha256 "a07979a9a8f022094853dfc11cfcbc386ad01c4f0348ddbba9ebded01b03425c"
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

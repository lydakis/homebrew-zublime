cask "zublime" do
  version "0.1.2"

  depends_on arch: :arm64

  sha256 "b9018a92fd105a9038d05645daa543b28ed77d4de497adee7200fbfd81a877ad"
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

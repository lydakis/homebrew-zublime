cask "zublime" do
  version "0.1.0"

  depends_on arch: :arm64

  sha256 "5573df9d63ab519ee35bf0e9bfc6eabf7168552995519355dbcc1ec50790fe37"
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

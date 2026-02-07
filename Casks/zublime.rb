cask "zublime" do
  version "0.1.3"

  depends_on arch: :arm64

  sha256 "52abca0f0451830d582a4aae8fd2f350356cefb385edda973d98b50c922f027b"
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

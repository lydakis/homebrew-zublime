cask "zublime" do
  version "0.1.1"

  on_arm do
    sha256 "PLACEHOLDER_SHA256_ARM64"
    url "https://github.com/lydakis/zublime/releases/download/v#{version}/Zublime-aarch64.dmg"
  end

  on_intel do
    sha256 "PLACEHOLDER_SHA256_X86_64"
    url "https://github.com/lydakis/zublime/releases/download/v#{version}/Zublime-x86_64.dmg"
  end

  name "Zublime"
  desc "A fork of Zed editor"
  homepage "https://github.com/lydakis/zublime"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Zed.app", target: "Zublime.app"

  zap trash: [
    "~/Library/Application Support/Zublime",
    "~/Library/Caches/Zublime",
    "~/Library/Logs/Zublime",
    "~/Library/Preferences/dev.zublime.Zublime.plist",
    "~/Library/Saved Application State/dev.zublime.Zublime.savedState",
  ]
end

cask "kubelizeme" do
  version "1.0.0"
  sha256 "17dbe040461f491f95ae4629070c244fbcc068d1727a374c63adbdf066e36927"

  url "https://releases.mioranza.tech/kubelizeme-v1.0.0.dmg"
  name "Kubelizeme"
  desc "Native desktop Kubernetes manager"
  homepage "https://git.mdcnet.casa/amioranza/kubelizeme"

  app "kubelizeme.app"

  zap trash: [
    "~/Library/Application Support/com.amioranza.kubelizeme",
    "~/Library/Caches/com.amioranza.kubelizeme",
    "~/Library/Logs/com.amioranza.kubelizeme",
    "~/Library/Preferences/com.amioranza.kubelizeme.plist",
  ]
end

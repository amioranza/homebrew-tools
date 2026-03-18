cask "kubelizeme" do
  version "1.0.3"
  sha256 "3a049d856a82545e7eb2dd10cb121aded9fcb86c706142a13ac9f3312bdf3dca"

  url "https://releases.mioranza.tech/kubelizeme-v1.0.3.dmg"
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

cask "kubelizeme" do
  version "1.1.0"
  sha256 "73adfec059b435f5fca4d295b83a83c9bdd8707aacc4ae117daf89a4def8bafd"

  url "https://releases.mioranza.tech/kubelizeme-v1.1.0.dmg"
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

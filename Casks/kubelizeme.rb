cask "kubelizeme" do
  version "1.0.1"
  sha256 "fcc66151e5935f4c34bb47c353202932f583e2be99e01db06f17bed4a8457e62"

  url "https://releases.mioranza.tech/kubelizeme-v1.0.1.dmg"
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

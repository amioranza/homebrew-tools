cask "kubelizeme" do
  version "1.0.2"
  sha256 "fec89f1927b1b6cc74bac775191e353d6f6998a75e32382e85bccf94cb873bb6"

  url "https://releases.mioranza.tech/kubelizeme-v1.0.2.dmg"
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

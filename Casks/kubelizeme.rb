cask "kubelizeme" do
  version "1.0.1"
  sha256 "35a4420f7338544faa396c5ef63b1a4013dca64b4c4fa2bbd621faf2a3cce697"

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

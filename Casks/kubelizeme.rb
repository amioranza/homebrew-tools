cask "kubelizeme" do
  version "0.1.0"
  sha256 "597e87cccddeba283ce23087db28ff8019bc6f311adcf4deab961517cdd45760"

  url "https://releases.mioranza.tech/kubelizeme-v0.1.0.dmg"
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

cask "kubelizeme" do
  version "1.4.0"
  sha256 "61ee295a4a24b5d21b16181120b7ef99e0894c0f2176ffc5e0a27381d2f248a8"

  url "https://releases.mioranza.tech/kubelizeme-v1.4.0.dmg"
  name "Kubelizeme"
  desc "Native desktop Kubernetes manager"
  homepage "https://git.mdcnet.casa/amioranza/kubelizeme"

  preflight do
    system_command "/usr/bin/xattr",
      args: ["-cr", "#{staged_path}/kubelizeme.app"]
  end

  app "kubelizeme.app"

  zap trash: [
    "~/Library/Application Support/com.amioranza.kubelizeme",
    "~/Library/Caches/com.amioranza.kubelizeme",
    "~/Library/Logs/com.amioranza.kubelizeme",
    "~/Library/Preferences/com.amioranza.kubelizeme.plist",
  ]
end

cask "kubelizeme" do
  version "1.2.1"
  sha256 "45a6f5c91665af88d8a13799dd2bfc8e8722b48de14c8522802b8253e67a2293"

  url "https://releases.mioranza.tech/kubelizeme-v1.2.1.dmg"
  name "Kubelizeme"
  desc "Native desktop Kubernetes manager"
  homepage "https://git.mdcnet.casa/amioranza/kubelizeme"

  preflight do
    system_command "/usr/bin/xattr",
      args: ["-cr", "\#{staged_path}/kubelizeme.app"]
  end

  app "kubelizeme.app"

  zap trash: [
    "~/Library/Application Support/com.amioranza.kubelizeme",
    "~/Library/Caches/com.amioranza.kubelizeme",
    "~/Library/Logs/com.amioranza.kubelizeme",
    "~/Library/Preferences/com.amioranza.kubelizeme.plist",
  ]
end

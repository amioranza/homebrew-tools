cask "kubelizeme" do
  version "1.8.5"
  sha256 "d01194759fe0811de28c14c8bc01aa8a0ad86b572d22c206d447e98ceba21e50"

  url "https://releases.mioranza.tech/kubelizeme-v1.8.5.dmg"
  name "Kubelizeme"
  desc "Native desktop Kubernetes manager"
  homepage "https://mioranza.tech/kubelizeme.html"

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

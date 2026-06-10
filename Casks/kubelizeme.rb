cask "kubelizeme" do
  version "1.8.9"
  sha256 "1aed4b52fd0b26cf3c294bed75084855d1d8b01ee2ea4bc78c5ef4515398353a"

  url "https://releases.mioranza.tech/kubelizeme-v1.8.9.dmg"
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

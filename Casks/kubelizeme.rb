cask "kubelizeme" do
  version "1.6.1"
  sha256 "79e015890b725ee98c080f3e5b4381a6e13df0dad926e81da203851f491c3b53"

  url "https://releases.mioranza.tech/kubelizeme-v1.6.1.dmg"
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

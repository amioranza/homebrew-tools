cask "kubelizeme" do
  version "1.1.0"
  sha256 "23e06489974d838f94a32b45a341ea4a9d04919222fa3f2869cf784f088dfb93"

  url "https://releases.mioranza.tech/kubelizeme-v1.1.0.dmg"
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

cask "kubelizeme" do
  version "1.2.0"
  sha256 "9a15faa467367145eeac7fbdc4a42cb1bb8ee3f5e6e7cf84a8af905c21aad2ae"

  url "https://releases.mioranza.tech/kubelizeme-v1.2.0.dmg"
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

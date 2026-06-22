cask "kubelizeme" do
  version "1.8.10"
  sha256 "28a804104ca34a2c23c4b1ff7cedd679ffb288842c5f6d6c31810980ee874664"

  url "https://releases.mioranza.tech/kubelizeme-v1.8.10.dmg"
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

cask "kubelizeme" do
  version "1.8.12"
  sha256 "92f40836f4386d38854b5a32be56703d0ab5183c579a99886546132da0c5898c"

  url "https://releases.mioranza.tech/kubelizeme-v1.8.12.dmg"
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

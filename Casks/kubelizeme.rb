cask "kubelizeme" do
  version "1.3.0"
  sha256 "8a52e4fc54a5a25505f4884a53e711abf7d467b1a89f348d10701e013663b76b"

  url "https://releases.mioranza.tech/kubelizeme-v1.3.0.dmg"
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

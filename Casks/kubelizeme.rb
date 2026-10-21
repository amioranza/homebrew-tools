cask "kubelizeme" do
  version "1.9.4"
  sha256 "5956087e952ed7bb727671a3eeba7e1941d89d11f09237df2ff7ea9de74b91a9"

  url "https://releases.mioranza.tech/kubelizeme-v1.9.4.dmg"
  name "Kubelizeme"
  desc "Native desktop Kubernetes manager"
  homepage "https://mioranza.tech/kubelizeme.html"

  auto_updates true

  depends_on :macos

  app "kubelizeme.app"

  # Homebrew 7 install steps: declarative (sandboxed), so the path xattr
  # writes to is declared; `preflight do ... system_command` is deprecated.
  preflight_steps do
    run "/usr/bin/xattr",
        args:           ["-cr", "{{staged_path}}/kubelizeme.app"],
        writable_paths: ["kubelizeme.app"],
        writable_base:  :staged_path
  end

  zap trash: [
    "~/Library/Application Support/com.amioranza.kubelizeme",
    "~/Library/Application Support/me.kubelize.app",
    "~/Library/Application Support/me.kubelize.app.migrated",
    "~/Library/Caches/com.amioranza.kubelizeme",
    "~/Library/Caches/me.kubelize.app",
    "~/Library/Logs/com.amioranza.kubelizeme",
    "~/Library/Logs/me.kubelize.app",
    "~/Library/Preferences/com.amioranza.kubelizeme.plist",
    "~/Library/Preferences/me.kubelize.app.plist",
    "~/Library/WebKit/com.amioranza.kubelizeme",
    "~/Library/WebKit/me.kubelize.app",
    "~/Library/WebKit/me.kubelize.app.migrated",
  ]
end

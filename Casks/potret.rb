cask "potret" do
  version "0.2.14"
  sha256 "75a76dbba1cf8acb810eec33370f0a8b6f5720fbfdfd424657c468008d78604e"

  url "https://github.com/PradiptaPutra/potret/releases/download/v#{version}/Potret_#{version}_universal.dmg",
      verified: "github.com/PradiptaPutra/potret/"
  name "Potret"
  desc "Free, open-source screenshot & annotation tool"
  homepage "https://github.com/PradiptaPutra/potret"

  app "Potret.app"

  # Potret isn't Apple-notarized, so after install: strip quarantine (no Gatekeeper
  # prompt) and register with LaunchServices (so it shows in Launchpad / Spotlight).
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Potret.app"]
    system_command "/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister",
                   args: ["-f", "#{appdir}/Potret.app"]
  end

  # `brew uninstall --zap potret` removes the app AND all of its data.
  zap trash: [
    "~/Library/Application Support/com.potret.app",
    "~/Library/Caches/com.potret.app",
    "~/Library/Caches/potret",
    "~/Library/Preferences/com.potret.app.plist",
    "~/Library/Saved Application State/com.potret.app.savedState",
    "~/Library/WebKit/com.potret.app",
    "~/Library/LaunchAgents/Potret.plist",
  ]
end

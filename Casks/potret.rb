cask "potret" do
  version "0.2.6"
  sha256 "899a122095611c6eebe17115e08eb7f5bd33ba225ddb9bb5c9e7d8db6c1a73e5"

  url "https://github.com/PradiptaPutra/potret/releases/download/v#{version}/Potret_#{version}_universal.dmg",
      verified: "github.com/PradiptaPutra/potret/"
  name "Potret"
  desc "Free, open-source screenshot & annotation tool"
  homepage "https://github.com/PradiptaPutra/potret"

  app "Potret.app"

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

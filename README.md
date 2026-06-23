# PradiptaPutra/homebrew-tap

Homebrew tap for [Potret](https://github.com/PradiptaPutra/potret) — a free, open-source macOS screenshot & annotation tool.

```bash
brew install --cask PradiptaPutra/tap/potret   # install (auto-handles Gatekeeper + Launchpad)
brew upgrade --cask potret                     # update
brew uninstall --zap potret                    # uninstall + remove all data
```

The cask strips the quarantine flag and registers the app after install, so it opens without
the Gatekeeper prompt and appears in Launchpad — even though Potret isn't Apple-notarized.

# PradiptaPutra/homebrew-tap

Homebrew tap for [Potret](https://github.com/PradiptaPutra/potret) — a free, open-source macOS screenshot & annotation tool.

```bash
brew install --cask --no-quarantine PradiptaPutra/tap/potret   # clean install, no Gatekeeper prompt
brew upgrade --cask potret                                     # update
brew uninstall --zap potret                                    # uninstall + remove all data
```

`--no-quarantine` skips the macOS Gatekeeper warning (Potret is open-source and not Apple-notarized).

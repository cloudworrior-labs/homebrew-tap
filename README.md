# Homebrew tap for WorriorVex

```bash
brew tap cloudworrior-labs/tap
brew trust cloudworrior-labs/tap      # recent Homebrew asks this once for any third-party tap
brew install --cask worriorvex
```

WorriorVex is a local-first note-taking app: https://github.com/cloudworrior-labs/worriorvex

The app is not signed with an Apple Developer ID yet. If macOS refuses to open it the first time:
`xattr -dr com.apple.quarantine /Applications/WorriorVex.app`, or right-click the app and choose Open.

The cask is updated automatically from the latest release (`.github/workflows/update-cask.yml`, every six
hours and on demand). Do not edit `Casks/worriorvex.rb` by hand; change `worriorvex.rb.template`.

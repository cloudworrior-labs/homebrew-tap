cask "worriorvex" do
  arch arm: "arm64", intel: "x64"

  version "0.5.3"
  sha256 arm:   "da5fac15cb053a32e0d05e2b40d9116b28f4948540df30e2b9ef30a57a48b1be",
         intel: "230ef90d652075ba28ca7ec0e447eb3e3161e6eef88c84d09a97c80bbc8c031a"

  url "https://github.com/cloudworrior-labs/worriorvex/releases/download/v#{version}/WorriorVex-#{version}-macos-#{arch}.dmg"
  name "WorriorVex"
  desc "Local-first note-taking app and personal knowledge workspace"
  homepage "https://github.com/cloudworrior-labs/worriorvex"

  depends_on macos: :monterey

  app "WorriorVex.app"

  # Notes live in ~/Library/Application Support/WorriorVex. Uninstalling never removes them.

  caveats <<~EOS
    WorriorVex is not yet signed with an Apple Developer ID. If macOS refuses to open it, run:

      xattr -dr com.apple.quarantine /Applications/WorriorVex.app
  EOS
end

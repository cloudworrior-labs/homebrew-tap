cask "worriorvex" do
  arch arm: "arm64", intel: "x64"

  version "0.6.8"
  sha256 arm:   "0bbfee8361cdc2a6dab0a87e46b6bca5293549cfaa1c7ecef5c6ce35b222277d",
         intel: "4aa4da02728403c13b6cbf49518b566fe7dd28d0864431dd4ab35451a8efb1ad"

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

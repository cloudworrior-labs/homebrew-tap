cask "worriorvex" do
  arch arm: "arm64", intel: "x64"

  version "0.6.6"
  sha256 arm:   "98e239d0be033da9492b6a9641d50e905524f3f8e1955231664fd77c47dc5d6c",
         intel: "ed74ae55991cda1758c08f386dd7fdb1fd20a87f3a0bdaa325bc08c811206950"

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

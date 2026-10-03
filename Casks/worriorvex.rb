cask "worriorvex" do
  arch arm: "arm64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "1bdb2a2f2a96b5ffd08ee7d8db8b26d43bd357581c3f40df40890934828ac379",
         intel: "09742a40ca4f91df5fe086f80170e3a98dec47e5358dd1d5bec1d86467a31ed2"

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

cask "worriorvex" do
  arch arm: "arm64", intel: "x64"

  version "0.6.7"
  sha256 arm:   "5679013ef2ef986d67adb874afc325dab6b1b2c417f4ee74a2cd2d0d23e45736",
         intel: "73cb01e578146619f094f95312f20aa1b20d37908116eb3276b94882cd0fd45a"

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

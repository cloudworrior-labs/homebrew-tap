cask "worriorvex" do
  arch arm: "arm64", intel: "x64"

  version "0.5.4"
  sha256 arm:   "cc94ff0b9a87d2883b0daf8126bc167859e6c105dcd4a160b74af352626b8165",
         intel: "1de76b7d83c2b701251326f7a1efe95dc3722af44bb60f83e5b73f46ff0590b9"

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

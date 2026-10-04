cask "worriorvex" do
  arch arm: "arm64", intel: "x64"

  version "0.5.2"
  sha256 arm:   "f09b508e93c4548b619f595cf70a041978947ff362147068398faf3b69e630c9",
         intel: "dacd3256bae2360b168d8ea4ceff6956badd71213df7ff5282da215a8b68d6c3"

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

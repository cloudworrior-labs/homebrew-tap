cask "worriorvex" do
  arch arm: "arm64", intel: "x64"

  version "0.6.9"
  sha256 arm:   "d6f470f2962d8d9a0475d4240702cbad55aff98a28bce1ad44da6ffe1633a2aa",
         intel: "fc6940fbd2e50fdcb74b7446b73962e4e375c65202b4acc510375fa13681dac8"

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

cask "worriorvex" do
  arch arm: "arm64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "a6709676bc2329b8fb885db80f23162a0b4256f144a4b29d9290b646b747e615",
         intel: "48902615c5480db69532709d7c4747f5fab1c582ba45909f8d2272b2ce509846"

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

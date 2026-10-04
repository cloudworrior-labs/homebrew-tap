cask "worriorvex" do
  arch arm: "arm64", intel: "x64"

  version "0.5.6"
  sha256 arm:   "35b8ae24b3fd9196e2cf0399efe907c4ffb161635eb4ff6381bfc4d8ca72604d",
         intel: "ca8214b2f4ee52016ca153b6bc74ced8b21446c5e2b58850fa941b3de1efaf9e"

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

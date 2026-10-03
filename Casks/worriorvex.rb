cask "worriorvex" do
  arch arm: "arm64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "4ed24f893abf1c1730b075a00536a1043afe79a27a38c9b2a7110cf25f377261",
         intel: "6b931dcaf7233fd128ab1f4fdf3671b2c7c887b682b52f6e630cb6c68fec3a1a"

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

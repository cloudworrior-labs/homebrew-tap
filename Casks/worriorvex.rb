cask "worriorvex" do
  arch arm: "arm64", intel: "x64"

  version "0.6.5"
  sha256 arm:   "a8442494cdbedc3f82c181cb2308bc7cb673604cff640a545e5a9c442e262212",
         intel: "ef7e3f4e5322f412fa86689dc1bf9b0556b5e7d12f7079a33bcf298a72bf7f31"

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

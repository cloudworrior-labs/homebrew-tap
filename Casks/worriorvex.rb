cask "worriorvex" do
  arch arm: "arm64", intel: "x64"

  version "0.6.1"
  sha256 arm:   "6b50503dda0c721710be1cf566a12d26dcbb991210ee46c955ecc5820fdf8a33",
         intel: "bd386ebe8d06c2c24241457efe032a113fefae9ee5cfd488a15b2237cbc08589"

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

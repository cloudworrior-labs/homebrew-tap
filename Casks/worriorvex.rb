cask "worriorvex" do
  arch arm: "arm64", intel: "x64"

  version "0.6.2"
  sha256 arm:   "6db7a2ce0625e9e470132f6bf1cd9f2ee5287a4bda79f29a0de5641a7fa1d264",
         intel: "58117669e68b6850a6b02dc3bfc9d03820d7169695bcf972c46248902ea47168"

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

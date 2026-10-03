cask "worriorvex" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "2901d4f4f305fb0db897a3c1d66b17b899f8fd5d3e33ae8b767c691f7167f938",
         intel: "8f16c8f15b282a9b59f72140a43a2f308551d86e7fde34d524082cae71f4effb"

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

cask "worriorvex" do
  arch arm: "arm64", intel: "x64"

  version "0.6.4"
  sha256 arm:   "c2bc86e94a1ceaf0d619225fd0f2a31b8664c16e3b9f46fa9c44c91a9fce262f",
         intel: "e05fb0c65a8f236c8a4e7ecd6fedbb852cb64cc1d0caf6f659b8a00544dd1a7a"

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

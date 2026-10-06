cask "worriorvex" do
  arch arm: "arm64", intel: "x64"

  version "0.6.3"
  sha256 arm:   "395eef1227002ab60ef0a3f89dc2e19657fa48d96a8580cfda7ee18ef41dd938",
         intel: "8956207caf01b926921620a3ff605047ea4f10f8902d5e880d70f522f4e5bc85"

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

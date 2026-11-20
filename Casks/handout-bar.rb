cask "handout-bar" do
  version "0.10.0"
  sha256 "19aad2a6f3a2961a8f3a20e4539ae47afb660e501ce2deb2cb05b0230672ac4c"

  url "https://github.com/consolelabs/handout/releases/download/v#{version}/Handout-Bar-#{version}.zip"
  name "Handout Bar"
  desc "Menu bar app for handout: live status, quick links, drag-to-publish"
  homepage "https://github.com/consolelabs/handout"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "consolelabs/tap/handout"
  depends_on macos: :ventura

  app "Handout Bar.app"

  uninstall quit: "foundation.d.share.bar"

  zap trash: "~/Library/Preferences/foundation.d.share.bar.plist"
end

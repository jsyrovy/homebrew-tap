cask "feedini" do
  version "0.2"
  sha256 "e2206085b85774c5dc3617634942690ef629cdef62e86be23642e5ec3e0575cf"

  url "https://github.com/jsyrovy/feedini/releases/download/v#{version}/Feedini-#{version}.zip"
  name "Feedini"
  desc "Keyboard-driven RSS reader that groups and summarizes articles with AI"
  homepage "https://github.com/jsyrovy/feedini"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Feedini.app"

  uninstall quit: "cz.jsyrovy.feedini"

  zap trash: [
    "~/Library/Application Support/Feedini",
    "~/Library/Caches/cz.jsyrovy.feedini",
    "~/Library/HTTPStorages/cz.jsyrovy.feedini.binarycookies",
    "~/Library/Preferences/cz.jsyrovy.feedini.plist",
    "~/Library/Saved Application State/cz.jsyrovy.feedini.savedState",
    "~/Library/WebKit/cz.jsyrovy.feedini",
  ]
end

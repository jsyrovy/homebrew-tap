cask "buddr" do
  version "0.2"
  sha256 "78a7a8a9a39f64475db022901b522f8844c569423fb19368a66b6bf9d0f34eab"

  url "https://github.com/jsyrovy/buddr/releases/download/v#{version}/Buddr-#{version}.zip"
  name "Buddr"
  desc "Desktop sheep showing the state of AI coding agents in herdr"
  homepage "https://github.com/jsyrovy/buddr"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Buddr.app"

  uninstall quit: "cz.jsyrovy.buddr"

  zap trash: "~/Library/Preferences/cz.jsyrovy.buddr.plist"
end

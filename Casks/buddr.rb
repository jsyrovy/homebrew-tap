cask "buddr" do
  version "0.3"
  sha256 "488fffbcdda0bc6af82dc9e2ff7e157c0e6ce551f3be9c1d3628b34643ceeb59"

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

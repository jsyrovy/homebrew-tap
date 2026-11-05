cask "buddr" do
  version "0.1"
  sha256 "5912c17b754e71a149c270d4a7506b259a7a9eac97b4ad747b56418247939676"

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

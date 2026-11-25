# Written by jflowers/gh-hud's release (jflowers/ship mac-app-release.yml). Edits are overwritten.
cask "gh-hud" do
  version "0.3.21"
  sha256 "d7ca80e14a6106e697701dfa761697e8aa4927f8dfddd2e04e694896d76c9692"

  url "https://github.com/jflowers/gh-hud/releases/download/v#{version}/gh-hud-app_#{version}.zip"
  name "gh-hud"
  desc "Dashboard for GitHub work and coding agents, a client of the gh-hud hub"
  homepage "https://github.com/jflowers/gh-hud"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "gh-hud.app"
end

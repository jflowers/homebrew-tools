# Written by jflowers/gh-hud's release (jflowers/ship mac-app-release.yml). Edits are overwritten.
cask "gh-hud" do
  version "0.3.20"
  sha256 "74429949bde4bc5d50c0e8d4433f19acb547a9e021ffa20875b0ad030276e808"

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

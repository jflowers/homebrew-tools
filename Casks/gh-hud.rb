# Written by jflowers/gh-hud's release (jflowers/ship mac-app-release.yml). Edits are overwritten.
cask "gh-hud" do
  version "0.3.23"
  sha256 "b77c73372e086849f21416d5494aa4508790b2259c19e9c83a7fefee37b63d60"

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

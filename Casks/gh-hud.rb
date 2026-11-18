# Written by gh-hud's release workflow (macos/cask.sh). Edits are overwritten.
cask "gh-hud" do
  version "0.3.7"
  sha256 "ee1334a2d663f2a1524dbc957b3b0ad1c43d757ecf0554be62fb0b6f2e2e4ca1"

  url "https://github.com/jflowers/gh-hud/releases/download/v#{version}/gh-hud-app_#{version}.zip"
  name "gh-hud"
  desc "Dashboard for GitHub work and coding agents, a client of the gh-hud hub"
  homepage "https://github.com/jflowers/gh-hud"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "gh-hud.app"
end

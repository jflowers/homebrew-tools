# Written by gh-hud's release workflow (macos/cask.sh). Edits are overwritten.
cask "gh-hud" do
  version "0.3.14"
  sha256 "54645694f58d69bd5c038c67db1f2273570c13530ebca4fe386202d7abd98c81"

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

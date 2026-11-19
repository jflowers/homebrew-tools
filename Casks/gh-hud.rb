# Written by gh-hud's release workflow (macos/cask.sh). Edits are overwritten.
cask "gh-hud" do
  version "0.3.11"
  sha256 "6c29ce519aa9b84436a922c727ba0abeb3e67b5ed23f8d75f9fd21d44773a607"

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

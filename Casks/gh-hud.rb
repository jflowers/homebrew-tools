# Written by gh-hud's release workflow (macos/cask.sh). Edits are overwritten.
cask "gh-hud" do
  version "0.3.10"
  sha256 "0fbe4cc2e5077643f139498aacf10e82d827023367693d8ece8048502f1f2eac"

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

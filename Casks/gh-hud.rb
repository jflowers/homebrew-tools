# Written by jflowers/gh-hud's release (jflowers/ship mac-app-release.yml). Edits are overwritten.
cask "gh-hud" do
  version "0.3.22"
  sha256 "53e811c7824fe0013a1533424292d66480f685f5ae511f87b07223159fc204a6"

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

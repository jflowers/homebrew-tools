# Written by gh-hud's release workflow (macos/cask.sh). Edits are overwritten.
cask "gh-hud" do
  version "0.3.1"
  sha256 "bd20c605a75b703635dab7361558eba75a885af20f8540bc46f0cfed07c1141f"

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

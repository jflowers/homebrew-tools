cask "get-out" do
  version :latest
  sha256 :no_check

  url "https://github.com/jflowers/get-out/releases/latest/download/get-out_#{version}_darwin_#{Hardware::CPU.intel? ? "amd64" : "arm64"}.tar.gz"
  name "get-out"
  desc "Export Slack messages (DMs, groups, channels) to organized Google Docs"
  homepage "https://github.com/jflowers/get-out"

  binary "get-out"
  manpage "man/get-out.1"
end

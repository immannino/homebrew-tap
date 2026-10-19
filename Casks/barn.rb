# Homebrew cask template. The release workflow fills in version and sha256 and pushes it to
# github.com/immannino/homebrew-tap as Casks/barn.rb. Users then run:
#   brew install --cask immannino/tap/barn
cask "barn" do
  version "0.1.2"
  sha256 "8c14217453b836db24551a0d696c383401f544b1da4115824cc34f09c65d64c9"

  url "https://github.com/immannino/barn.app/releases/download/v#{version}/barn-#{version}.zip"
  name "barn"
  desc "Menu bar monitor and switcher for AI coding agents"
  homepage "https://github.com/immannino/barn.app"

  # barn updates itself with Sparkle, so `brew upgrade` leaves it alone unless run with --greedy.
  auto_updates true
  depends_on macos: ">= :sonoma"

  app "barn.app"
  binary "#{appdir}/barn.app/Contents/MacOS/barn"

  zap trash: [
    "~/.barn",
    "~/Library/Logs/barn.log",
    "~/Library/Preferences/dev.tony.barn.plist",
  ]
end

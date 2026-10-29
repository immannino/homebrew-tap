# Homebrew cask template. The release workflow fills in version and sha256 and pushes it to
# github.com/immannino/homebrew-tap as Casks/barn.rb. Users then run:
#   brew install --cask immannino/tap/barn
cask "barn" do
  version "0.3.0"
  sha256 "3df6c75134d3b4bdd6d3d3c6d2795fc34e6b67dbc4cd5e4c2d039663d437980e"

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

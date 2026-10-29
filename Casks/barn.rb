# Homebrew cask template. The release workflow fills in version and sha256 and pushes it to
# github.com/immannino/homebrew-tap as Casks/barn.rb. Users then run:
#   brew install --cask immannino/tap/barn
cask "barn" do
  version "0.3.1"
  sha256 "b6f9e457c7dab776e048f6ac1a790e475c2b9455956347b11754686e5697af9b"

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

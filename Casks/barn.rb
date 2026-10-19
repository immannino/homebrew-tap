# Homebrew cask template. The release workflow fills in version and sha256 and pushes it to
# github.com/immannino/homebrew-tap as Casks/barn.rb. Users then run:
#   brew install --cask immannino/tap/barn
cask "barn" do
  version "0.1.0"
  sha256 "bd289fa436f5e30f56eaa0e7de4fac806dfb4fb14a651713fcefdbfd51ba0c5d"

  url "https://github.com/immannino/barn.app/releases/download/v#{version}/barn-#{version}.zip"
  name "barn"
  desc "Menu bar monitor and switcher for AI coding agents"
  homepage "https://github.com/immannino/barn.app"

  depends_on macos: ">= :sonoma"

  app "barn.app"
  binary "#{appdir}/barn.app/Contents/MacOS/barn"

  zap trash: [
    "~/.barn",
    "~/Library/Logs/barn.log",
    "~/Library/Preferences/dev.tony.barn.plist",
  ]
end

# Homebrew cask template. The release workflow fills in version and sha256 and pushes it to
# github.com/immannino/homebrew-tap as Casks/barn.rb. Users then run:
#   brew install --cask immannino/tap/barn
cask "barn" do
  version "0.1.1"
  sha256 "1e8ce36cdc4093316cbdef8000219c8b5061dbe0325fd3819d4e3d7a4f059f6d"

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

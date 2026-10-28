cask "macclair" do
  version "0.7.0"
  sha256 "48aa6c86919b17c27b48a1d4ccbd5e96f09014607aba6e8e8f7ef37017f0f6d7"

  url "https://github.com/n-khd/MacClair/releases/download/v#{version}/MacClair-#{version}-macOS-arm64.dmg"
  name "MacClair"
  desc "Analyser l'espace disque et deplacer prudemment des fichiers vers la Corbeille"
  homepage "https://github.com/n-khd/MacClair"

  auto_updates true

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "MacClair.app"
end

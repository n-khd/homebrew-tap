cask "macclair" do
  version "0.6.0"
  sha256 "01dd06e87780442b621d605e6dbeb6ecba20e2d19b85109bd84cf65e2ec7365e"

  url "https://github.com/Najmabdi7/MacClair/releases/download/v#{version}/MacClair-#{version}-macOS-arm64.dmg"
  name "MacClair"
  desc "Analyser l'espace disque et deplacer prudemment des fichiers vers la Corbeille"
  homepage "https://github.com/Najmabdi7/MacClair"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "MacClair.app"
end

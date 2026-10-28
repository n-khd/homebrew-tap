cask "macclair" do
  version "0.6.1"
  sha256 "b63ef38cf2b7e524d41fa5ac0c8f8f7d8d02b93bfb5d6932c6379767f1cae8d9"

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

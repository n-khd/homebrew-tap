cask "macclair" do
  version "0.9.0"
  sha256 "1b5f7f49db8d028d613a302b7be1e2bcdc1e24060df3c40a78af416a4b43790e"

  url "https://github.com/n-khd/MacClair/releases/download/v#{version}/MacClair-#{version}-macOS-universal.dmg"
  name "MacClair"
  desc "Analyser l'espace disque et deplacer prudemment des fichiers vers la Corbeille"
  homepage "https://github.com/n-khd/MacClair"

  auto_updates true

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "MacClair.app"
end

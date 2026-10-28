cask "macclair" do
  version "0.5.2"
  sha256 "86dd15c0d318eae6dadf6909d652a003b6dc2f1a180f447e17abdd591bb950f3"

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

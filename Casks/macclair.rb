cask "macclair" do
  version "0.6.2"
  sha256 "288f740f70e9bb284a354274f2f13285b746858e4d186084512184ce0cfd5533"

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

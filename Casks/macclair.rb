cask "macclair" do
  version "0.8.0"
  sha256 "fc1458d13f445b2dd12c1d268d03fd68f7f733b270b4f101e8e195bf2e493c64"

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

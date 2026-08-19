cask "imark" do
  version "0.4.0"
  sha256 "e40f252f78bec989554365d0ac4a3fc05cdffbcc98568ee204295d4b73b80bfa"

  url "https://github.com/migsilva89/imark/releases/download/v#{version}/Imark-#{version}.dmg",
      verified: "github.com/migsilva89/imark/"
  name "Imark"
  desc "Markdown reader that keeps comments inside the document"
  homepage "https://github.com/migsilva89/imark"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Imark.app"

  zap trash: [
    "~/Library/Application Support/Imark",
    "~/Library/Caches/pt.miguelsilva.imark",
    "~/Library/Preferences/pt.miguelsilva.imark.plist",
    "~/Library/Saved Application State/pt.miguelsilva.imark.savedState",
  ]
end

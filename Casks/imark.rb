cask "imark" do
  version "0.6.5"
  sha256 "ed15e9a0bec79c24b1e79193c2b650e5cb0a66c874354887afbf1911fd0a86cd"

  url "https://github.com/migsilva89/imark/releases/download/v#{version}/Imark-#{version}.dmg"
  name "Imark"
  desc "Markdown reader that keeps comments inside the document"
  homepage "https://github.com/migsilva89/imark"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Imark.app"
  binary "#{appdir}/Imark.app/Contents/Resources/imark"

  zap trash: [
    "~/Library/Application Support/Imark",
    "~/Library/Caches/pt.miguelsilva.imark",
    "~/Library/Preferences/pt.miguelsilva.imark.plist",
    "~/Library/Saved Application State/pt.miguelsilva.imark.savedState",
  ]
end

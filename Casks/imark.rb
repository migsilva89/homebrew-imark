cask "imark" do
  version "0.6.0"
  sha256 "4251141b6fdbe668166bd6c5e4b263250ce2051254c0420351467446cf6e4c01"

  url "https://github.com/migsilva89/imark/releases/download/v#{version}/Imark-#{version}.dmg",
      verified: "github.com/migsilva89/imark/"
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

cask "imark" do
  version "0.6.8"
  sha256 "56d476b63fa3cfc19b84d5c0f7d064e128c8908fe6bd2db6d5ca9edcec639893"

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

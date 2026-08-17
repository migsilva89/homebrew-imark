cask "imark" do
  version "0.3.0"
  sha256 "eb9b52cb312e473cd8dbdfe74e985e47f18beeb870941bcce52e072c36970656"

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

cask "imark" do
  version "0.2.2"
  sha256 "079093b0f5d1905e927cfff8be8f7814a37cf84cc9a622c20712d864845c102d"

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

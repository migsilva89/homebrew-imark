cask "imark" do
  version "0.2.0"
  sha256 "f7674ad061b81e237ae1594625ab67737610c66bb2f1eb8fa32087b0f3df2675"

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

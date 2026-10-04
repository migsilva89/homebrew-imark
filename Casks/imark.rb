cask "imark" do
  version "0.6.4"
  sha256 "2a4cf73507748e2946142a0e09ea460520fab5f0c38881adca409c47a77dc9f8"

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

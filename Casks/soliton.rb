cask "soliton" do
  version "0.3.1"
  sha256 "7df8a808ba661d43396192b17d9a3f84572314bf57f64762680f9d3178956c39"

  url "https://github.com/selimamar/soliton/releases/download/v#{version}/Soliton-#{version}.zip"
  name "Soliton"
  desc "Follow training runs and simulations while they run"
  homepage "https://github.com/selimamar/soliton"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Soliton.app"

  zap trash: "~/Library/Containers/io.github.selimamar.soliton"

  caveats <<~EOS
    Soliton isn't notarised by Apple, so macOS blocks it the first time.
    Open it once, then choose System Settings → Privacy & Security →
    Open Anyway. Or, from a terminal:
      xattr -dr com.apple.quarantine /Applications/Soliton.app

    After each update, macOS asks once more whether Soliton may read its
    server token from your keychain: choose Always Allow.
  EOS
end

cask "soliton" do
  version "0.3.2"
  sha256 "1b2d2e58c2d5b2f5e1e494d11cecb7ee0dcfc0739c3b5bc63c7951d5ce9e1809"

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

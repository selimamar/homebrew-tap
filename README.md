# selimamar/homebrew-tap

Homebrew recipes for [Soliton](https://github.com/selimamar/soliton): follow
training runs and simulations while they run.

## The Mac app

```bash
brew install --cask selimamar/tap/soliton
```

`brew upgrade` installs new versions.

Soliton isn't notarised by Apple, so macOS blocks it the first time: open it
once, then choose **System Settings → Privacy & Security → Open Anyway**. Or,
from a terminal:

```bash
xattr -dr com.apple.quarantine /Applications/Soliton.app
```

After each update, macOS also asks once whether Soliton may use its keychain
(where it keeps the server's token): choose **Always Allow**.

To remove it: `brew uninstall --cask soliton`, or `brew uninstall --zap
--cask soliton` to remove its settings too.

The app shows the runs a Soliton server keeps: see
[Getting started](https://github.com/selimamar/soliton/blob/main/docs/getting-started.md)
to install and run one.

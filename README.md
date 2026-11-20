# consolelabs/homebrew-tap

Homebrew tap for apps from [Console Labs](https://console.so).

```sh
brew trust consolelabs/tap
brew install consolelabs/tap/<formula>
brew install --cask consolelabs/tap/<cask>
```

| Formula | What it does |
|---|---|
| [handout](https://github.com/consolelabs/handout) | Hand out files, folders, and dev servers at a link on your own domain, with expiry, private links, and visitor counts. Installs `share` too, the old name. |

| Cask | What it does |
|---|---|
| [handout-bar](https://github.com/consolelabs/handout) | Handout Bar: the menu bar app for handout. |
| [spacedown](https://github.com/consolelabs/spacedown) | Quick Look preview for Markdown: press space on a `.md` file in Finder to read it rendered, math included. |

Current Homebrew loads formulae and casks only from trusted taps: run `brew trust consolelabs/tap` once, or trust one name, for example `brew trust --cask consolelabs/tap/spacedown`.

## Releasing a new version

1. Release the app in its repo.
2. Update `version` and `sha256` in `Casks/<name>.rb` (or `url` and `sha256` in `Formula/<name>.rb`): `curl -sL <url> | shasum -a 256`.
3. Open a PR here. CI audits each formula and cask and installs it on a GitHub-hosted macOS runner.

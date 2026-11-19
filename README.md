# consolelabs/homebrew-tap

Homebrew tap for apps from [Console Labs](https://console.so).

```sh
brew install --cask consolelabs/tap/<cask>
```

| Cask | What it does |
|---|---|
| [spacedown](https://github.com/consolelabs/spacedown) | Quick Look preview for Markdown: press space on a `.md` file in Finder to read it rendered, math included. |

Current Homebrew loads casks only from trusted taps. Trust the cask you install: `brew trust --cask consolelabs/tap/spacedown`.

## Releasing a new version

1. Release the app in its repo.
2. Update `version` and `sha256` in `Casks/<name>.rb`: `curl -sL <zip-url> | shasum -a 256`.
3. Open a PR here. CI audits the cask and installs it on a GitHub-hosted macOS runner.

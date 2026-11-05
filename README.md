# jsyrovy/tap

Homebrew casks of my apps.

## Buddr

[Buddr](https://github.com/jsyrovy/buddr) is a pixel-art sheep on your desktop that shows the state of AI coding
agents running in herdr.

```bash
brew install --cask jsyrovy/tap/buddr
```

Using it by its short name and uninstalling: [Install](https://github.com/jsyrovy/buddr#install) in Buddr's README.

## Feedini

[Feedini](https://github.com/jsyrovy/feedini) is a native macOS RSS reader, driven by the keyboard, that groups
articles from many feeds into stories and summarizes them with AI.

```bash
brew install --cask jsyrovy/tap/feedini
```

Using it by its short name and uninstalling: [Install](https://github.com/jsyrovy/feedini#install) in Feedini's README.

## Maintaining

A cask (`Casks/<app>.rb`) is updated by `.github/workflows/homebrew.yml` of its app's repository whenever a release is
published there; each app pushes with a deploy key of this repository of its own.

Check a change of a cask (an install by the full name trusts the cask, other commands need `brew trust` first):

```bash
brew trust --cask jsyrovy/tap/<app>
brew audit --cask --online --strict jsyrovy/tap/<app>  # --new adds the notability check of homebrew/cask, which fails
brew style jsyrovy/tap/<app>
brew livecheck --cask jsyrovy/tap/<app>
```

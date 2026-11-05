# jsyrovy/tap

Homebrew casks of my apps.

## Buddr

[Buddr](https://github.com/jsyrovy/buddr) is a pixel-art sheep on your desktop that shows the state of AI coding
agents running in herdr.

```bash
brew install --cask jsyrovy/tap/buddr
```

Using it by its short name and uninstalling: [Install](https://github.com/jsyrovy/buddr#install) in Buddr's README.

## Maintaining

`Casks/buddr.rb` is updated by `.github/workflows/homebrew.yml` of the Buddr repository whenever a release is
published there; it pushes with a deploy key of this repository.

Check a change of a cask (an install by the full name trusts the cask, other commands need `brew trust` first):

```bash
brew trust --cask jsyrovy/tap/buddr
brew audit --cask --online --strict jsyrovy/tap/buddr  # --new adds the notability check of homebrew/cask, which fails
brew style jsyrovy/tap/buddr
brew livecheck --cask jsyrovy/tap/buddr
```

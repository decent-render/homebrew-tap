# decent-render/tap

Homebrew tap for **decent-node** — the node supervisor CLI for the
[Decent render network](https://github.com/decent-render/decent-render).

## Install

```sh
brew tap decent-render/tap
brew install decent-node
```

Apple-Silicon only (the render payloads are arm64-compiled).

## Use

```sh
decent-node login      # pair this machine (paste the worker token)
decent-node install    # run unattended as a launchd agent (own-fleet)
decent-node start      # foreground (smoke / debug)
```

Upgrades land here automatically on each tagged release.

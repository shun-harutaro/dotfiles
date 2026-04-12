# dotfiles

Personal dotfiles for macOS. Files under `home/` are symlinked into `$HOME` by `scripts/install`. Optional packages are declared in `Brewfile` for `brew bundle`.

## Prerequisites

- [Homebrew](https://brew.sh/)
- Git

## Setup

Clone this repository to any path (for example `~/src/dotfiles`).

```sh
cd /path/to/dotfiles
brew bundle
./scripts/install
```

Preview what would run without changing files:

```sh
./scripts/install --dry-run
```

## Layout

| Path | Role |
|------|------|
| `home/` | Dotfiles tracked in-repo; each path mirrors the name under `$HOME` |
| `scripts/install` | Creates symlinks from `home/` into `$HOME` and sets `core.excludesfile` to `~/.gitignore_global` |
| `Brewfile` | `brew bundle install` / `brew bundle check` |

## Notes

- A snapshot before a larger refresh is tagged `backup/pre-refresh-2026-04-12`.
- `~/.zprezto/runcoms` or other old symlinks from the previous layout are not removed by `install`; clean those up manually if needed.

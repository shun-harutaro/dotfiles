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
| `scripts/install` | Creates symlinks from `home/` into `$HOME` (e.g. `~/.gitconfig`, `~/.gitignore_global`, `~/.zshrc`, `~/.config/mise/config.toml`, `~/.config/ccstatusline/settings.json`, `~/.cursor/cli-config.json`, `~/.claude/settings.json`) and sets `core.excludesfile` to `~/.gitignore_global` |
| `Brewfile` | `brew bundle install` / `brew bundle check` |
| `.cursor/rules/` | Cursor agent rules for this repository (not symlinked to `$HOME`) |

## Notes

- **Shell:** Tracked `~/.zshrc` defines aliases and optionally sources `~/.local/bin/env`. Put AWS Bedrock / Claude Code–specific `export`s in **`~/.zshrc.local`** (create yourself; see `home/.zshrc.local.example`). That file is not installed by `install`. **mise:** `home/.config/mise/config.toml` is symlinked to `~/.config/mise/config.toml`; run `mise install` to install tools declared there (ensure `mise` is on your `PATH`, e.g. via Homebrew).
- **Cursor / Claude Code:** `home/.cursor/cli-config.json` and `home/.claude/settings.json` hold CLI permission allow-lists. Cursor uses `Shell(ls)`; Claude Code uses `Bash(ls *)` for the same “list directory” intent—extend both when you add rules. Do not commit secrets; keep `~/.cursor/mcp.json` and similar local-only.
- A snapshot before a larger refresh is tagged `backup/pre-refresh-2026-04-12`.
- `~/.zprezto/runcoms` or other old symlinks from the previous layout are not removed by `install`; clean those up manually if needed.

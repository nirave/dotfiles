# dotfiles

This repository installs Nirave's Neovim distribution, **niravevim**, using [Dotbot](https://github.com/anishathalye/dotbot).

## Installation

1. **Quick install:**
   ```bash
   sh -c "$(curl -fsSL tinyurl.com/dotbot)" -- init --apply https://github.com/nirave/dotfiles
   ```

2. **Manual clone (Alternative):**
   ```bash
   git clone https://github.com/nirave/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   brew install dotbot
   dotbot -c install.conf.yaml
   ```

## Dependencies

This setup automatically ensures the following tools are installed (if missing, via Homebrew or apt):
- `fzf` (fuzzy finder)
- `neovim` (editor)
- `atuin` (history sync)
- `ripgrep` (`rg`)
- `tree`
- `curl`
- `tmux`
- `git`

## Shell Configuration

This setup automatically configures your shell (`.bashrc` and `.zshrc`) to:
- Add `~/.local/bin` to your `PATH` (enabling the `niravim` command).
- Initialize `atuin` for shell history synchronization.

These changes are applied idempotently; existing shell configurations will not be overwritten.

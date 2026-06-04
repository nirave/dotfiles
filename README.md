# My Dotfiles

This repository manages my dotfiles using [chezmoi](https://www.chezmoi.io/).

## What this repo does
This repository sets up **niravevim**, a custom Neovim distribution. It is configured to run in an **isolated environment**, meaning its configuration and plugins are completely separate from any other Neovim setups on your system.

To use this configuration, simply run:
```bash
niravim
```

## Installation

**Clone this repository to your machine:**

```bash
git clone <URL_TO_YOUR_GITHUB_REPO> ~/dotfiles
```

If you don't have `chezmoi` installed:

**macOS (via Homebrew):**
```bash
brew install chezmoi
```

**Ubuntu (via apt):**
```bash
sudo apt update
sudo apt install chezmoi
```

## Initial Setup

To link this repository to your system:

```bash
chezmoi init --source ~/dotfiles
chezmoi apply
```

## Workflow: Managing Dotfiles

### 1. Make Changes
Modify your files in their target locations (e.g., files in `~/.config/config_niravim/`).

### 2. Update Source
After making changes, tell `chezmoi` to update its source directory (`~/dotfiles`):

```bash
chezmoi add <path-to-file>
```

### 3. Commit Changes
Once `chezmoi` has updated the source files in `~/dotfiles`, commit them to Git:

```bash
cd ~/dotfiles
git add .
git commit -m "Update configuration"
```

## Purging/Removing Chezmoi

1.  **Remove Managed Files:**
    ```bash
    chezmoi purge
    ```
2.  **Remove Config/State:**
    ```bash
    rm -rf ~/.config/chezmoi ~/.local/share/chezmoi
    ```

## Repository Structure
- **`private_` prefix:** Maps to a directory/file with private permissions (`0700`).
- **`dot_` prefix:** Maps to a file/directory starting with a dot.

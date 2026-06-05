#!/bin/bash
# install-deps.sh - Install dependencies if not present

install_pkg() {
    local pkg_name=$1
    local cmd_name=$2

    if ! command -v "$cmd_name" &> /dev/null; then
        echo "$pkg_name not found, attempting to install..."
        if [ "$(uname)" == "Darwin" ]; then
            if command -v brew &> /dev/null; then
                brew install "$pkg_name" || echo "Warning: Failed to install $pkg_name via brew"
            fi
        elif [ -f /etc/debian_version ]; then
            if sudo -n true &> /dev/null; then
                sudo apt update && sudo apt install -y "$pkg_name" || echo "Warning: Failed to install $pkg_name via apt"
            else
                echo "Warning: Sudo requires password. Skipping $pkg_name installation."
            fi
        else
            echo "Warning: Unsupported OS, skipping $pkg_name."
        fi
    else
        echo "$pkg_name is already installed."
    fi
}

# List of tools to install: pkg_name, cmd_name
install_pkg "fzf" "fzf"
install_pkg "neovim" "nvim"
install_pkg "atuin" "atuin"
install_pkg "ripgrep" "rg"
install_pkg "tree" "tree"
install_pkg "curl" "curl"install_pkg "tmux" "tmux"install_pkg "git" "git"
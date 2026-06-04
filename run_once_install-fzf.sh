#!/bin/bash
# run_once_install-fzf.sh - Installs fzf if not present

if ! command -v fzf &> /dev/null; then
    echo "fzf not found, installing..."
    if [ "$(uname)" == "Darwin" ]; then
        if command -v brew &> /dev/null; then
            brew install fzf
        else
            echo "Homebrew not found, please install fzf manually."
        fi
    elif [ -f /etc/debian_version ]; then
        sudo apt update && sudo apt install -y fzf
    else
        echo "Unsupported OS, please install fzf manually."
    fi
else
    echo "fzf is already installed."
fi

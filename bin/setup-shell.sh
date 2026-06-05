#!/bin/bash

# Setup PATH and Atuin for a given rc file
setup_rc() {
    local rc_file="$1"
    local shell_type="$2" # bash or zsh

    if [ ! -f "$rc_file" ]; then
        touch "$rc_file"
    fi

    # Ensure PATH
    if ! grep -q 'export PATH="$HOME/.local/bin:$PATH"' "$rc_file"; then
        echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$rc_file"
    fi

    # Ensure Atuin
    if ! grep -q 'eval "$(atuin init' "$rc_file"; then
        echo 'eval "$(atuin init '$shell_type')"' >> "$rc_file"
    fi
}

setup_rc "$HOME/.bashrc" "bash"
setup_rc "$HOME/.zshrc" "zsh"

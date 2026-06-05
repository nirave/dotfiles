#!/bin/bash
REQUIRED_MAJOR=0
REQUIRED_MINOR=10

if ! command -v nvim &> /dev/null; then
    echo "Error: Neovim is not installed."
    exit 1
fi

# Extract version numbers
# Output format example: "NVIM v0.12.2"
VERSION_STRING=$(nvim --version | head -n 1 | grep -oE '[0-9]+\.[0-9]+\.[0-9]+')
MAJOR=$(echo $VERSION_STRING | cut -d. -f1)
MINOR=$(echo $VERSION_STRING | cut -d. -f2)

if [ "$MAJOR" -lt "$REQUIRED_MAJOR" ] || ([ "$MAJOR" -eq "$REQUIRED_MAJOR" ] && [ "$MINOR" -lt "$REQUIRED_MINOR" ]); then
    echo "Warning: Neovim version is too old (found $VERSION_STRING, required >= $REQUIRED_MAJOR.$REQUIRED_MINOR.0)."
    exit 1
fi
echo "Neovim version $VERSION_STRING is acceptable."

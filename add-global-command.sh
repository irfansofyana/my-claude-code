#!/bin/bash

# Add specific Claude Code command to global commands
# Usage: ./add-global-command.sh <command-name>
# Example: ./add-global-command.sh codebase-explorer

if [ $# -eq 0 ]; then
    echo "Usage: $0 <command-name>"
    echo "Example: $0 codebase-explorer"
    echo ""
    echo "Available commands:"
    ls -1 "$(dirname "$0")/.claude/commands/" | sed 's/\.md$//'
    exit 1
fi

COMMAND_NAME="$1"
REPO_COMMANDS_DIR="$(dirname "$0")/.claude/commands"
GLOBAL_COMMANDS_DIR="$HOME/.claude/commands"
COMMAND_FILE="${COMMAND_NAME}.md"

# Create global directory if it doesn't exist
mkdir -p "$GLOBAL_COMMANDS_DIR"

# Check if command exists in repository
if [ ! -f "$REPO_COMMANDS_DIR/$COMMAND_FILE" ]; then
    echo "Error: Command '$COMMAND_NAME' not found in repository"
    echo ""
    echo "Available commands:"
    ls -1 "$REPO_COMMANDS_DIR" | sed 's/\.md$//'
    exit 1
fi

# Check if global command already exists and warn user
if [ -L "$GLOBAL_COMMANDS_DIR/$COMMAND_FILE" ]; then
    echo "ℹ️  Updating existing global command (symlink)..."
elif [ -f "$GLOBAL_COMMANDS_DIR/$COMMAND_FILE" ]; then
    echo "⚠️  Warning: Global command '$COMMAND_NAME' already exists (not managed by this repo)"
    echo "This will replace the existing command with a symlink to your repo version."
    read -p "Continue? (y/n): " -n 1 -r
    echo
    [[ ! $REPLY =~ ^[Yy]$ ]] && exit 1
fi

# Copy the specific command globally
echo "Adding '$COMMAND_NAME' to global Claude Code commands..."
cp "$REPO_COMMANDS_DIR/$COMMAND_FILE" "$GLOBAL_COMMANDS_DIR/"

echo "✅ Successfully added '$COMMAND_NAME' globally"
echo "Command is now available globally as: /$COMMAND_NAME"
echo "Note: Command copied to global location - run this script again to sync updates"
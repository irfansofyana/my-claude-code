#!/bin/bash

# Add specific Claude Code agent to global agents
# Usage: ./add-global-agent.sh <agent-name>
# Example: ./add-global-agent.sh codebase-explorer

if [ $# -eq 0 ]; then
    echo "Usage: $0 <agent-name>"
    echo "Example: $0 codebase-explorer"
    echo ""
    echo "Available agents:"
    ls -1 "$(dirname "$0")/.claude/agents/" | sed 's/\.md$//'
    exit 1
fi

AGENT_NAME="$1"
REPO_AGENTS_DIR="$(dirname "$0")/.claude/agents"
GLOBAL_AGENTS_DIR="$HOME/.claude/agents"
AGENT_FILE="${AGENT_NAME}.md"

# Create global directory if it doesn't exist
mkdir -p "$GLOBAL_AGENTS_DIR"

# Check if agent exists in repository
if [ ! -f "$REPO_AGENTS_DIR/$AGENT_FILE" ]; then
    echo "Error: Agent '$AGENT_NAME' not found in repository"
    echo ""
    echo "Available agents:"
    ls -1 "$REPO_AGENTS_DIR" | sed 's/\.md$//'
    exit 1
fi

# Check if global agent already exists and warn user
if [ -L "$GLOBAL_AGENTS_DIR/$AGENT_FILE" ]; then
    echo "ℹ️  Updating existing global agent (symlink)..."
elif [ -f "$GLOBAL_AGENTS_DIR/$AGENT_FILE" ]; then
    echo "⚠️  Warning: Global agent '$AGENT_NAME' already exists (not managed by this repo)"
    echo "This will replace the existing agent with a symlink to your repo version."
    read -p "Continue? (y/n): " -n 1 -r
    echo
    [[ ! $REPLY =~ ^[Yy]$ ]] && exit 1
fi

# Copy the specific agent globally
echo "Adding '$AGENT_NAME' to global Claude Code agents..."
cp "$REPO_AGENTS_DIR/$AGENT_FILE" "$GLOBAL_AGENTS_DIR/"

echo "✅ Successfully added '$AGENT_NAME' globally"
echo "Agent is now available globally as: @$AGENT_NAME"
echo "Note: Agent copied to global location - run this script again to sync updates"
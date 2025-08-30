# My Claude Code Configuration

A personal repository for managing Claude Code configurations, custom commands, and workflow automation. This repository serves as a centralized hub for Claude Code (claude.ai/code) customization and usage optimization.

## Overview

This repository contains:

- Custom Claude Code commands and automation
- Configuration files for optimized Claude Code workflows  
- Documentation and usage patterns for Claude Code features
- Personal preferences and settings management

## Repository Structure

```text
my-claude-code/
├── .claude/                    # Claude Code configuration directory
│   └── commands/              # Custom commands and automation
├── docs/                      # Additional detailed documentation
├── add-global-command.sh      # Utility to make commands globally available
├── CLAUDE.md                  # Project context and guidance for Claude Code
└── README.md                  # This file
```

## Features

### Custom Commands

This repository includes a collection of custom Claude Code commands for automation and workflow optimization. See [`docs/commands.md`](docs/commands.md) for detailed information about available commands, usage examples, and when to use each tool.

### Utilities

- **add-global-command.sh**: Shell script to copy specific commands from this repository to the global Claude Code commands directory (`~/.claude/commands/`)

### Configuration Management

- Centralized Claude Code settings and preferences
- Project-specific guidance through CLAUDE.md
- Workflow optimization templates

## How to Use

This repository enhances your Claude Code CLI experience with custom automation commands and optimized configurations.

### Prerequisites

- [Claude Code CLI](https://claude.ai/code) installed and configured
- Git for version control
- Basic familiarity with command-line tools

### Setup Instructions

1. **Clone the Repository**

   ```bash
   git clone https://github.com/irfansofyana/my-claude-code.git
   cd my-claude-code
   ```

2. **Make Scripts Executable**

   ```bash
   chmod +x add-global-command.sh
   ```

3. **Using Commands Locally**
   - Commands in `.claude/commands/` are automatically available when working within this repository
   - Use `/auto-doc`, `/codebase-explorer`, or `/article` directly in Claude Code sessions

4. **Making Commands Globally Available** (Recommended)

   ```bash
   # Add all commands globally
   ./add-global-command.sh auto-doc
   ./add-global-command.sh codebase-explorer  
   ./add-global-command.sh article
   
   # Or check available commands first
   ./add-global-command.sh
   ```

5. **Verify Installation**
   - Open any project in Claude Code
   - Type `/auto-doc` or `/codebase-explorer` to confirm commands are available globally

## Documentation

For comprehensive information about this repository:

- [`docs/commands.md`](docs/commands.md) - Available custom commands and usage guide
- [`docs/contributing.md`](docs/contributing.md) - Guide for creating new commands

## Contributing

This is a personal configuration repository. Feel free to fork and adapt for your own Claude Code workflow needs.

## Links

- [Claude Code Documentation](https://docs.anthropic.com/claude/docs)
- [Claude Code Slash Commands](https://docs.anthropic.com/en/docs/claude-code/slash-commands)
- [GitHub Repository](https://github.com/irfansofyana/my-claude-code)

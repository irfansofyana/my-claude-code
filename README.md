# My Claude Code Configuration

A personal repository for managing Claude Code configurations, custom commands, workflow automation, and specialized sub-agents. This repository serves as a centralized hub for Claude Code (claude.ai/code) customization and usage optimization.

## Overview

This repository contains:

- Custom Claude Code commands and automation
- Specialized Claude Code sub-agents for enhanced workflows
- Configuration files for optimized Claude Code workflows  
- Documentation and usage patterns for Claude Code features
- Personal preferences and settings management

## Repository Structure

```text
my-claude-code/
├── .claude/                    # Claude Code configuration directory
│   ├── agents/                # Custom Claude Code sub-agents
│   └── commands/              # Custom slash commands available
├── docs/                      # Additional detailed documentation
├── add-global-agent.sh        # Utility to make agents globally available
├── add-global-command.sh      # Utility to make commands globally available
├── CLAUDE.md                  # Project context and guidance for Claude Code
└── README.md                  # This file
```

## Features

### Claude Code Sub-Agents

This repository includes specialized sub-agents that provide focused expertise for specific types of tasks:

- **`codebase-explorer`**: Expert code archaeologist for understanding unfamiliar codebases, feature implementation planning, and rapid onboarding to new projects
- **`documentation-specialist`**: Comprehensive documentation specialist for updating project documentation, maintaining consistency, and creating new docs that follow project patterns

Sub-agents provide enhanced context management and task-specific workflows, allowing Claude Code to maintain specialized expertise and memory for different types of work.

### Custom Commands

This repository includes a collection of custom Claude Code commands for automation and workflow optimization. See [`docs/commands.md`](docs/commands.md) for detailed information about available commands, usage examples, and when to use each tool.

### Utilities

- **add-global-agent.sh**: Shell script to copy specific agents from this repository to the global Claude Code agents directory (`~/.claude/agents/`)
- **add-global-command.sh**: Shell script to copy specific commands from this repository to the global Claude Code commands directory (`~/.claude/commands/`)

### Configuration Management

- Centralized Claude Code settings and preferences
- Project-specific guidance through CLAUDE.md
- Workflow optimization templates

## How to Use

This repository enhances your Claude Code CLI experience with custom automation commands, specialized sub-agents, and optimized configurations.

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
   chmod +x add-global-agent.sh
   chmod +x add-global-command.sh
   ```

3. **Using Sub-Agents**
   - Sub-agents in `.claude/agents/` are automatically available when working within this repository
   - Use `@codebase-explorer` or `@documentation-specialist` in Claude Code sessions for specialized assistance
   - Sub-agents maintain context and expertise specific to their domain

4. **Using Commands Locally**
   - Commands in `.claude/commands/` are automatically available when working within this repository
   - Use `/auto-doc`, `/codebase-explorer`, or `/article` directly in Claude Code sessions

5. **Making Agents Globally Available** (Recommended)

   ```bash
   # Add agents globally
   ./add-global-agent.sh codebase-explorer
   ./add-global-agent.sh documentation-specialist
   
   # Or check available agents first
   ./add-global-agent.sh
   ```

6. **Making Commands Globally Available** (Recommended)

   ```bash
   # Add all commands globally
   ./add-global-command.sh auto-doc
   ./add-global-command.sh codebase-explorer  
   ./add-global-command.sh article
   
   # Or check available commands first
   ./add-global-command.sh
   ```

7. **Verify Installation**
   - Open any project in Claude Code
   - Type `/auto-doc` or `/codebase-explorer` to confirm commands are available globally
   - Try `@codebase-explorer` to test sub-agent availability

## Documentation

For comprehensive information about this repository:

- [`docs/agents.md`](docs/agents.md) - Available Claude Code sub-agents and usage guide
- [`docs/commands.md`](docs/commands.md) - Available custom commands and usage guide
- [`docs/contributing.md`](docs/contributing.md) - Guide for creating new commands

## Contributing

This is a personal configuration repository. Feel free to fork and adapt for your own Claude Code workflow needs.

## Links

- [Claude Code Documentation](https://docs.anthropic.com/claude/docs)
- [Claude Code Slash Commands](https://docs.anthropic.com/en/docs/claude-code/slash-commands)
- [Claude Code Sub-Agents](https://docs.anthropic.com/en/docs/claude-code/sub-agents)
- [GitHub Repository](https://github.com/irfansofyana/my-claude-code)